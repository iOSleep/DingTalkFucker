#import "DingTalkHelper.h"
#import "LLPunchConfig.h"
#import "LLPunchManager.h"
#import "DingTalkRedEnvelop.h"
#import "DingTalkRedHead.h"
#import "IdentfierLog.h"

%hook DTWebViewController

- (BOOL)pluginInstance:(id)arg1 jsapiShouldCall:(id)arg2{
  return YES;
}

%end

%hook LAPluginInstanceCollector

- (void)handleJavaScriptRequest:(id)arg2 callback:(void(^)(id dic))arg3{
  if(![LLPunchManager shared].punchConfig.isOpenPunchHelper){
    %orig;
  } else if([arg2[@"action"] isEqualToString:@"getInterface"]){
    id callback = ^(id dic){
      NSDictionary *retDic = @{
                               @"errorCode" : @"0",
                               @"errorMessage": @"",
                               @"keep": @"0",
                               @"result": @{
                                   @"macIp": [LLPunchManager shared].punchConfig.wifiMacIp,
                                   @"ssid": [LLPunchManager shared].punchConfig.wifiName
                                   }
                               };
      arg3(![LLPunchManager shared].punchConfig.isLocationPunchMode ? retDic : dic);
    };
    %orig(arg2,callback);
  } else if([arg2[@"action"] isEqualToString:@"start"]){
    id callback = ^(id dic){
      NSDictionary *retDic = @{
                               @"errorCode" : @"0",
                               @"errorMessage": @"",
                               @"keep": @"1",
                               @"result": @{
                                   @"aMapCode": @"0",
                                   @"accuracy": [LLPunchManager shared].punchConfig.accuracy,
                                   @"latitude": [LLPunchManager shared].punchConfig.latitude,
                                   @"longitude": [LLPunchManager shared].punchConfig.longitude,
                                   @"netType": @"",
                                   @"operatorType": @"unknown",
                                   @"resultCode": @"0",
                                   @"resultMessage": @""
                                   }
                               };
      arg3([LLPunchManager shared].punchConfig.isLocationPunchMode ? retDic : dic);
    };
    %orig(arg2,callback);
  } else {
    %orig;
  }
}

%end


%hook DTSettingListViewController

- (void)tidyDatasource{
  %orig;
  DTCellItem *cellItem = [%c(DTCellItem) cellItemForDefaultStyleWithIcon:nil title:@"钉钉定位" image:nil showIndicator:YES cellDidSelectedBlock:^{
    LLSettingController *settingVC = [[%c(LLSettingController) alloc] init];
    [self.navigationController pushViewController:settingVC animated:YES];
  }];
  
  DTCellItem *redItem = [%c(DTCellItem) cellItemForDefaultStyleWithIcon:nil title:@"钉钉红包" image:nil showIndicator:YES cellDidSelectedBlock:^{
//    WrappedHUDHelper *helper = [%c(WrappedHUDHelper) sharedHelper];
//    [helper showHUDOnFrontWithSuccessTitle:@"编写抢红包" duration:1.0f blockUI:NO];
      LLRedEnvelopSettingController *vc = [[%c(LLRedEnvelopSettingController) alloc] init];
      [self.navigationController pushViewController:vc animated:YES];
    //    LLSettingController *settingVC = [[%c(LLSettingController) alloc] init];
    //    [self.navigationController pushViewController:settingVC animated:YES];
  }];
  
  DTSectionItem *sectionItem = [%c(DTSectionItem) itemWithSectionHeader:nil sectionFooter:nil];
  sectionItem.dataSource = @[cellItem];
  
  DTSectionItem *redsectionItem = [%c(DTSectionItem) itemWithSectionHeader:nil sectionFooter:nil];
  redsectionItem.dataSource = @[redItem];
  
  NSMutableArray *dataSourceArr = [self.dataSource.tableViewDataSource mutableCopy];
  [dataSourceArr insertObject:sectionItem atIndex:0];
  [dataSourceArr insertObject:redsectionItem atIndex:0];
  self.dataSource.tableViewDataSource = dataSourceArr;
}
%end


%subclass LLSettingController : DTTableViewController <AMapLocationManagerDelegate>

%property (nonatomic, retain) AMapLocationManager *locationManager;
%property (nonatomic, retain) LLPunchConfig *punchConfig;

- (id)init{
  self = %orig;
  if(self){
    self.locationManager = [[%c(AMapLocationManager) alloc] init];
    self.locationManager.delegate = (id<AMapLocationManagerDelegate>)self;
    self.punchConfig = [[LLPunchManager shared].punchConfig copy];
  }
  return self;
}

- (void)viewDidLoad {
  %orig;
  
  [self setNavigationBar];
  [self tidyDataSource];
}

%new
- (void)setNavigationBar{
  self.title = @"钉钉定位";
  self.view.backgroundColor = [UIColor whiteColor];
}

%new
- (void)tidyDataSource{
  NSMutableArray <DTSectionItem *> *sectionItems = [NSMutableArray array];
  
  DTCellItem *openPunchCellItem = [NSClassFromString(@"DTCellItem") cellItemForSwitcherStyleWithTitle:@"是否开启打卡助手" isSwitcherOn:self.punchConfig.isOpenPunchHelper switcherValueDidChangeBlock:^(DTCellItem *item,DTCell *cell,UISwitch *aSwitch){
    self.punchConfig.isOpenPunchHelper = aSwitch.on;
  }];
  DTCellItem *punchModeCellItem = [NSClassFromString(@"DTCellItem") cellItemForSwitcherStyleWithTitle:@"打卡模式定位/WIFI" isSwitcherOn:self.punchConfig.isLocationPunchMode switcherValueDidChangeBlock:^(DTCellItem *item,DTCell *cell,UISwitch *aSwitch){
    self.punchConfig.isLocationPunchMode = aSwitch.on;
  }];
  DTSectionItem *switchSectionItem = [NSClassFromString(@"DTSectionItem") itemWithSectionHeader:nil sectionFooter:nil];
  switchSectionItem.dataSource = @[openPunchCellItem,punchModeCellItem];
  [sectionItems addObject:switchSectionItem];
  
  NSArray <NSString *> *titles = @[@"Wi-Fi 名称",@"Wi-Fi MAC地址",@"精度",@"经度",@"纬度"];
  NSArray <NSString *> *hints  = @[@"请输入Wi-Fi名称",@"请输入Wi-Fi MAC地址",@"请输入定位精度",@"请输入定位经度",@"请输入定位纬度"];
  NSArray <NSString *> *texts    = @[self.punchConfig.wifiName?:@"",self.punchConfig.wifiMacIp?:@"",self.punchConfig.accuracy?:@"",self.punchConfig.latitude?:@"",self.punchConfig.longitude?:@""];
  
  NSMutableArray <DTCellItem *> *cellItems = [NSMutableArray array];
  
  for (int i = 0; i < 5; i++) {
    DTCellItem *cellItem = [NSClassFromString(@"DTCellItem") cellItemForEditStyleWithTitle:titles[i] textFieldHint:hints[i] textFieldLimt:NSIntegerMax textFieldHelpBtnNormalImage:nil textFieldHelpBtnHighLightImage:nil textFieldDidChangeEditingBlock:^(DTCellItem *item,DTCell *cell,UITextField *textField){
      switch(i){
        case 0:
          self.punchConfig.wifiName = textField.text;
          break;
        case 1:
          self.punchConfig.wifiMacIp = textField.text;
          break;
        case 2:
          self.punchConfig.accuracy = textField.text;
          break;
        case 3:
          self.punchConfig.latitude = textField.text;
          break;
        case 4:
          self.punchConfig.longitude = textField.text;
          break;
      }
    }];
    cellItem.textFieldText = texts[i];
    [cellItems addObject:cellItem];
    if (i == 1 || i== 4) {
      DTSectionItem *sectionItem = [NSClassFromString(@"DTSectionItem") itemWithSectionHeader:nil sectionFooter:nil];
      sectionItem.dataSource = cellItems;
      [sectionItems addObject:sectionItem];
      if (i == 1) {
        cellItems = [NSMutableArray array];
      }
    }
  }
  
  DTCellItem *locationCellItem = [NSClassFromString(@"DTCellItem") cellItemForTitleOnlyStyleWithTitle:@"开始定位" cellDidSelectedBlock:^{
    if(![[LLPunchManager shared] isLocationAuth]){
      [[LLPunchManager shared] showMessage:@"请先打开钉钉定位权限" completion:^(BOOL isClickConfirm){
        if(isClickConfirm){
          [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];
        }
      }];
      return;
    }
    [self.locationManager startUpdatingLocation];
  }];
  DTCellItem *wifiCellItem = [NSClassFromString(@"DTCellItem") cellItemForTitleOnlyStyleWithTitle:@"开始识别Wi-Fi" cellDidSelectedBlock:^{
    NSDictionary *ssidInfoDic = [[LLPunchManager shared] SSIDInfo];
    NSString *wifiName = ssidInfoDic[@"SSID"];
    NSString *wifiMac = ssidInfoDic[@"BSSID"];
    if (!wifiName.length || !wifiMac){
      [[LLPunchManager shared] showMessage:@"请先连接打卡WI-FI" completion:^(BOOL isClickConfirm){
        if(isClickConfirm){
          //跳转到系统wifi列表
          [[LLPunchManager shared] jumpToWifiList];
        }
      }];
      return;
    }
    self.punchConfig.wifiName = wifiName;
    self.punchConfig.wifiMacIp = wifiMac;
    //刷新页面
    [self tidyDataSource];
  }];
  DTSectionItem *recognizeSectionItem = [NSClassFromString(@"DTSectionItem") itemWithSectionHeader:nil sectionFooter:nil];
  recognizeSectionItem.dataSource = @[locationCellItem,wifiCellItem];
  [sectionItems addObject:recognizeSectionItem];
  
  DTCellItem *saveCellItem = [NSClassFromString(@"DTCellItem") cellItemForTitleOnlyStyleWithTitle:@"保存" cellDidSelectedBlock:^{
    [[LLPunchManager shared] saveUserSetting:self.punchConfig];
    [self.navigationController popViewControllerAnimated:YES];
  }];
  DTSectionItem *saveSectionItem = [NSClassFromString(@"DTSectionItem") itemWithSectionHeader:nil sectionFooter:nil];
  saveSectionItem.dataSource = @[saveCellItem];
  [sectionItems addObject:saveSectionItem];
  
  DTTableViewDataSource *dataSource = [[NSClassFromString(@"DTTableViewDataSource") alloc] init];
  dataSource.tableViewDataSource = sectionItems;
  self.dataSource = dataSource;
  
  [self.tableView reloadData];
}

%new
- (void)amapLocationManager:(AMapLocationManager *)arg1 didUpdateLocation:(id)arg2 reGeocode:(id)arg3{
  [self.locationManager stopUpdatingLocation];
  CLLocation *location = (CLLocation *)arg2;
  self.punchConfig.latitude  = [NSString stringWithFormat:@"%@",@(location.coordinate.latitude)];
  self.punchConfig.longitude = [NSString stringWithFormat:@"%@",@(location.coordinate.longitude)];
  self.punchConfig.accuracy  = [NSString stringWithFormat:@"%@",@(fmax(location.horizontalAccuracy,location.verticalAccuracy))];
  //刷新页面
  [self tidyDataSource];
}

%end

%hook DTInfoPlist

+ (NSString *)getAppBundleId{
  return @"com.laiwang.DingTalk";
}

%end

%hook DTConversationListDataSource
- (void)controller:(id)arg1 didChangeObject:(id)arg2 atIndex:(unsigned long long)arg3 forChangeType:(long long)arg4 newIndex:(unsigned long long)arg5 {
    // 没有开启红包走原来逻辑
    %orig;
    if (![LLPunchManager shared].punchConfig.enableRedEnvolop) {
        LogDebug(@"xxx未开启红包选型");
        return;
    }
    NSMutableArray *attachArr = [DingTalkRedEnvelop disposeConversation:arg2];
    [%c(LLRedEnvelopSettingController) disposeRedEnvelop:attachArr];
}
%end



%subclass LLRedEnvelopSettingController : DTTableViewController

%property (nonatomic, retain) LLPunchConfig *punchConfig;

//%property (nonatomic, retain) AMapLocationManager *locationManager;
- (id)init{
    self = %orig;
    if(self){
        self.punchConfig = [[LLPunchManager shared].punchConfig copy];
//        self.locationManager = [[%c(AMapLocationManager) alloc] init];
    }
    return self;
}
- (void)viewDidLoad {
    %orig;
    
    [self setNavigationBar];
    [self tidyDataSource];
}

%new
- (void)setNavigationBar{
    self.title = @"钉钉红包";
    self.view.backgroundColor = [UIColor whiteColor];
}

%new
- (void)tidyDataSource{
    
    NSMutableArray <DTSectionItem *> *sectionItems = [NSMutableArray array];
    
    DTCellItem *openRedCellItem = [NSClassFromString(@"DTCellItem") cellItemForSwitcherStyleWithTitle:@"是否开启红包插件" isSwitcherOn:self.punchConfig.enableRedEnvolop switcherValueDidChangeBlock:^(DTCellItem *item,DTCell *cell,UISwitch *aSwitch){
        self.punchConfig.enableRedEnvolop = aSwitch.on;
    }];
  
    DTCellItem *openPickMeCellItem = [NSClassFromString(@"DTCellItem") cellItemForSwitcherStyleWithTitle:@"是否抢自己的红包" isSwitcherOn:self.punchConfig.pickOwnerRedEnvelop switcherValueDidChangeBlock:^(DTCellItem *item,DTCell *cell,UISwitch *aSwitch){
        self.punchConfig.pickOwnerRedEnvelop = aSwitch.on;
    }];
  
    DTSectionItem *boolSectionItem = [%c(DTSectionItem) itemWithSectionHeader:nil sectionFooter:nil];
    boolSectionItem.dataSource = @[openRedCellItem, openPickMeCellItem];
    [sectionItems addObject:boolSectionItem];
    
    
    NSArray <NSString *> *titles = @[@"延时",@"内容正则",@"名字正则",@"红包类型"];
    NSArray <NSString *> *hints  = @[@"随机延迟最大秒数",@"对红包内容的正则匹配",@"对发送红包人的正则匹配",@"红包类型，当前1,2,5"];
    NSArray <NSString *> *texts    = @[[@(self.punchConfig.delayTime) stringValue]?:@"",self.punchConfig.regularText?:@"",self.punchConfig.nameregularText?:@"",self.punchConfig.redenvelopTypeText?:@""];
    
    NSMutableArray <DTCellItem *> *cellItems = [NSMutableArray array];
    
    for (int i = 0; i < 4; i++) {
        DTCellItem *cellItem = [NSClassFromString(@"DTCellItem") cellItemForEditStyleWithTitle:titles[i] textFieldHint:hints[i] textFieldLimt:NSIntegerMax textFieldHelpBtnNormalImage:nil textFieldHelpBtnHighLightImage:nil textFieldDidChangeEditingBlock:^(DTCellItem *item,DTCell *cell,UITextField *textField){
            switch(i){
                case 0:{
                    double time = [textField.text doubleValue];
                    if (time < 0.01) time = 0;
                    self.punchConfig.delayTime = time;
                    break;
                }
                case 1:
                    self.punchConfig.regularText = textField.text;
                    break;
                case 2:
                    self.punchConfig.nameregularText = textField.text;
                    break;
                case 3:
                    self.punchConfig.redenvelopTypeText = textField.text;
                    break;
            }
        }];
        cellItem.textFieldText = texts[i];
        [cellItems addObject:cellItem];
        if (i == 3) {
            DTSectionItem *textSectionItem = [%c(DTSectionItem) itemWithSectionHeader:nil sectionFooter:nil];
            textSectionItem.dataSource = cellItems;
            [sectionItems addObject:textSectionItem];
        }
    }
    
//    @property (nonatomic, assign) CGFloat delayTime;///<延迟多少秒抢
//    @property (nonatomic, assign) BOOL pickOwnerRedEnvelop; ///< 是否抢自己发出去的红包
//    @property (nonatomic, strong) NSString *regularText;///< 内容的正则表达式
//    @property (nonatomic, strong) NSString *nameregularText;///< 名字正则表达式
//    @property (nonatomic, strong) NSString *redenvelopTypeText;//红包的类型,目前支持的是 901,902,905

    
    
    DTCellItem *saveCellItem = [NSClassFromString(@"DTCellItem") cellItemForTitleOnlyStyleWithTitle:@"保存" cellDidSelectedBlock:^{
        [[LLPunchManager shared] saveUserSetting:self.punchConfig];
        [self.navigationController popViewControllerAnimated:YES];
    }];
    
    DTSectionItem *saveSectionItem = [%c(DTSectionItem) itemWithSectionHeader:nil sectionFooter:nil];
    saveSectionItem.dataSource = @[saveCellItem];
    [sectionItems addObject:saveSectionItem];
    
    DTTableViewDataSource *dataSource = [[%c(DTTableViewDataSource) alloc] init];
    dataSource.tableViewDataSource = sectionItems;
    self.dataSource = dataSource;
    
    [self.tableView reloadData];
}


%new
+ (void)disposeRedEnvelop:(NSMutableArray *)attachArr {
    [attachArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        DTRedEnvelopServiceIMP *imp = [%c(DTRedEnvelopServiceFactory) defaultServiceIMP];
        long long sid = [obj[@"sid"] longLongValue];
        NSString *cluseId = obj[@"clusterid"];
        NSString *congrats = obj[@"congrats"];
        NSString *sname = obj[@"sname"];
        LogDebug(@"sid = %lld,cluseid = %@",sid,cluseId);
        if (cluseId.length > 0){
            BOOL isMine = [obj[@"isMine"] boolValue];
          LogDebug(@"%@", isMine ? @"YES" : @"NO");
            BOOL canPick = NO;
            if (isMine && ![LLPunchManager shared].punchConfig.pickOwnerRedEnvelop) {//不抢自己的
              LogDebug(@"不抢自己的");
                canPick = NO;
            }
            else {//不是自己的
                
                canPick = [self disposeCongratsRegula:[LLPunchManager shared].punchConfig.regularText congrats:congrats];
                LogDebug(@"lingdaiping_canPick1 = %d",canPick);
                if (canPick) {
                    canPick = [self disposeNameCongratsRegula:[LLPunchManager shared].punchConfig.nameregularText name:sname];
                    LogDebug(@"lingdaiping_canPick2 = %d",canPick);
                }
            }
            if (canPick) {
                CGFloat delatyTIme = [LLPunchManager shared].punchConfig.delayTime;
                LogDebug(@"lingdaiping_delatyTIme = %f",delatyTIme);
                if (delatyTIme > 0) {
                    int cout = arc4random() % 100;
                  BOOL left = arc4random() % 2;
                  CGFloat offset = cout / 100.0 * 0.5 * (left ? -1 : 1);
                  LogInfo(@"offset: %lf", offset);
                  CGFloat delayTime = MAX(0.5f, delatyTIme + offset);
              
                    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayTime * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                        [imp pickRedEnvelopCluster:sid clusterId:cluseId successBlock:nil failureBlock:nil];
                    });
                }
                else{
                    [imp pickRedEnvelopCluster:sid clusterId:cluseId successBlock:nil failureBlock:nil];
                }
                
            }
            
        }
    }];
    
}

%new
+ (BOOL)disposeCongratsRegula:(NSString *)regular congrats:(NSString *)congrats{
  LogDebug(@"正则：%@， 内容: %@", regular, congrats);
    NSString *regularText = regular;
  __block BOOL canPick = YES;
    if (regular.length == 0) {
      return canPick;
    }
    
    if (regularText.length > 0 && congrats.length > 0) {
        NSError *error;
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:regularText options:0 error:&error];
        [regex enumerateMatchesInString:congrats options:0 range:NSMakeRange(0, congrats.length) usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop2) {
            NSInteger cout = [result numberOfRanges];
            if (cout >= 1) {
                canPick = NO;
                *stop2 = YES;
            }
        }];
    }
    return canPick;
}

%new
+ (BOOL)disposeNameCongratsRegula:(NSString *)regular name:(NSString *)name{
    //名字匹配到的不抢
    NSString *regularText = regular;
    __block BOOL canPick = YES;
    
    if (regularText.length > 0 && name.length > 0) {
        NSError *error;
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:regularText options:0 error:&error];
        [regex enumerateMatchesInString:name options:0 range:NSMakeRange(0, name.length) usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop2) {
            NSInteger cout = [result numberOfRanges];
            if (cout >= 1) {
                canPick = NO;
                *stop2 = YES;
            }
        }];
    }
    return canPick;
}


%end

