#line 1 "/Users/yolande/code/jailbreak/DingTalkdFucker/DingTalkFucker/DingTalkFucker.xm"
#import "DingTalkHelper.h"
#import "LLPunchConfig.h"
#import "LLPunchManager.h"
#import "DingTalkRedEnvelop.h"
#import "DingTalkRedHead.h"
#import "IdentfierLog.h"


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class DTSectionItem; @class DTRedEnvelopServiceFactory; @class DTTableViewDataSource; @class LLSettingController; @class DTTableViewController; @class DTWebViewController; @class DTSettingListViewController; @class LAPluginInstanceCollector; @class LLRedEnvelopSettingController; @class DTCellItem; @class AMapLocationManager; @class DTInfoPlist; @class DTConversationListDataSource; 
static BOOL (*_logos_orig$_ungrouped$DTWebViewController$pluginInstance$jsapiShouldCall$)(_LOGOS_SELF_TYPE_NORMAL DTWebViewController* _LOGOS_SELF_CONST, SEL, id, id); static BOOL _logos_method$_ungrouped$DTWebViewController$pluginInstance$jsapiShouldCall$(_LOGOS_SELF_TYPE_NORMAL DTWebViewController* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$LAPluginInstanceCollector$handleJavaScriptRequest$callback$)(_LOGOS_SELF_TYPE_NORMAL LAPluginInstanceCollector* _LOGOS_SELF_CONST, SEL, id, void(^)(id dic)); static void _logos_method$_ungrouped$LAPluginInstanceCollector$handleJavaScriptRequest$callback$(_LOGOS_SELF_TYPE_NORMAL LAPluginInstanceCollector* _LOGOS_SELF_CONST, SEL, id, void(^)(id dic)); static void (*_logos_orig$_ungrouped$DTSettingListViewController$tidyDatasource)(_LOGOS_SELF_TYPE_NORMAL DTSettingListViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$DTSettingListViewController$tidyDatasource(_LOGOS_SELF_TYPE_NORMAL DTSettingListViewController* _LOGOS_SELF_CONST, SEL); static LLSettingController* (*_logos_orig$_ungrouped$LLSettingController$init)(_LOGOS_SELF_TYPE_INIT LLSettingController*, SEL) _LOGOS_RETURN_RETAINED; static LLSettingController* _logos_method$_ungrouped$LLSettingController$init(_LOGOS_SELF_TYPE_INIT LLSettingController*, SEL) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$LLSettingController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL LLSettingController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$LLSettingController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL LLSettingController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$LLSettingController$setNavigationBar(_LOGOS_SELF_TYPE_NORMAL LLSettingController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$LLSettingController$tidyDataSource(_LOGOS_SELF_TYPE_NORMAL LLSettingController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$LLSettingController$amapLocationManager$didUpdateLocation$reGeocode$(_LOGOS_SELF_TYPE_NORMAL LLSettingController* _LOGOS_SELF_CONST, SEL, AMapLocationManager *, id, id); static NSString * (*_logos_meta_orig$_ungrouped$DTInfoPlist$getAppBundleId)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static NSString * _logos_meta_method$_ungrouped$DTInfoPlist$getAppBundleId(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$DTConversationListDataSource$controller$didChangeObject$atIndex$forChangeType$newIndex$)(_LOGOS_SELF_TYPE_NORMAL DTConversationListDataSource* _LOGOS_SELF_CONST, SEL, id, id, unsigned long long, long long, unsigned long long); static void _logos_method$_ungrouped$DTConversationListDataSource$controller$didChangeObject$atIndex$forChangeType$newIndex$(_LOGOS_SELF_TYPE_NORMAL DTConversationListDataSource* _LOGOS_SELF_CONST, SEL, id, id, unsigned long long, long long, unsigned long long); static LLRedEnvelopSettingController* (*_logos_orig$_ungrouped$LLRedEnvelopSettingController$init)(_LOGOS_SELF_TYPE_INIT LLRedEnvelopSettingController*, SEL) _LOGOS_RETURN_RETAINED; static LLRedEnvelopSettingController* _logos_method$_ungrouped$LLRedEnvelopSettingController$init(_LOGOS_SELF_TYPE_INIT LLRedEnvelopSettingController*, SEL) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$LLRedEnvelopSettingController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL LLRedEnvelopSettingController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$LLRedEnvelopSettingController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL LLRedEnvelopSettingController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$LLRedEnvelopSettingController$setNavigationBar(_LOGOS_SELF_TYPE_NORMAL LLRedEnvelopSettingController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$LLRedEnvelopSettingController$tidyDataSource(_LOGOS_SELF_TYPE_NORMAL LLRedEnvelopSettingController* _LOGOS_SELF_CONST, SEL); static void _logos_meta_method$_ungrouped$LLRedEnvelopSettingController$disposeRedEnvelop$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, NSMutableArray *); static BOOL _logos_meta_method$_ungrouped$LLRedEnvelopSettingController$disposeCongratsRegula$congrats$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, NSString *, NSString *); static BOOL _logos_meta_method$_ungrouped$LLRedEnvelopSettingController$disposeNameCongratsRegula$name$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, NSString *, NSString *); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$AMapLocationManager(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("AMapLocationManager"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$LLSettingController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("LLSettingController"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$DTCellItem(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("DTCellItem"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$DTTableViewDataSource(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("DTTableViewDataSource"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$LLRedEnvelopSettingController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("LLRedEnvelopSettingController"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$DTRedEnvelopServiceFactory(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("DTRedEnvelopServiceFactory"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$DTSectionItem(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("DTSectionItem"); } return _klass; }
#line 8 "/Users/yolande/code/jailbreak/DingTalkdFucker/DingTalkFucker/DingTalkFucker.xm"


static BOOL _logos_method$_ungrouped$DTWebViewController$pluginInstance$jsapiShouldCall$(_LOGOS_SELF_TYPE_NORMAL DTWebViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
  return YES;
}





static void _logos_method$_ungrouped$LAPluginInstanceCollector$handleJavaScriptRequest$callback$(_LOGOS_SELF_TYPE_NORMAL LAPluginInstanceCollector* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg2, void(^arg3)(id dic)){
  if(![LLPunchManager shared].punchConfig.isOpenPunchHelper){
    _logos_orig$_ungrouped$LAPluginInstanceCollector$handleJavaScriptRequest$callback$(self, _cmd, arg2, arg3);
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
    _logos_orig$_ungrouped$LAPluginInstanceCollector$handleJavaScriptRequest$callback$(self, _cmd, arg2,callback);
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
    _logos_orig$_ungrouped$LAPluginInstanceCollector$handleJavaScriptRequest$callback$(self, _cmd, arg2,callback);
  } else {
    _logos_orig$_ungrouped$LAPluginInstanceCollector$handleJavaScriptRequest$callback$(self, _cmd, arg2, arg3);
  }
}






static void _logos_method$_ungrouped$DTSettingListViewController$tidyDatasource(_LOGOS_SELF_TYPE_NORMAL DTSettingListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
  _logos_orig$_ungrouped$DTSettingListViewController$tidyDatasource(self, _cmd);
  DTCellItem *cellItem = [_logos_static_class_lookup$DTCellItem() cellItemForDefaultStyleWithIcon:nil title:@"钉钉定位" image:nil showIndicator:YES cellDidSelectedBlock:^{
    LLSettingController *settingVC = [[_logos_static_class_lookup$LLSettingController() alloc] init];
    [self.navigationController pushViewController:settingVC animated:YES];
  }];
  
  DTCellItem *redItem = [_logos_static_class_lookup$DTCellItem() cellItemForDefaultStyleWithIcon:nil title:@"钉钉红包" image:nil showIndicator:YES cellDidSelectedBlock:^{


      LLRedEnvelopSettingController *vc = [[_logos_static_class_lookup$LLRedEnvelopSettingController() alloc] init];
      [self.navigationController pushViewController:vc animated:YES];
    
    
  }];
  
  DTSectionItem *sectionItem = [_logos_static_class_lookup$DTSectionItem() itemWithSectionHeader:nil sectionFooter:nil];
  sectionItem.dataSource = @[cellItem];
  
  DTSectionItem *redsectionItem = [_logos_static_class_lookup$DTSectionItem() itemWithSectionHeader:nil sectionFooter:nil];
  redsectionItem.dataSource = @[redItem];
  
  NSMutableArray *dataSourceArr = [self.dataSource.tableViewDataSource mutableCopy];
  [dataSourceArr insertObject:sectionItem atIndex:0];
  [dataSourceArr insertObject:redsectionItem atIndex:0];
  self.dataSource.tableViewDataSource = dataSourceArr;
}





static char _logos_property_key$_ungrouped$LLSettingController$locationManager;__attribute__((used)) static AMapLocationManager * _logos_method$_ungrouped$LLSettingController$locationManager$(LLSettingController* __unused self, SEL __unused _cmd){ return objc_getAssociatedObject(self, &_logos_property_key$_ungrouped$LLSettingController$locationManager); }__attribute__((used)) static void _logos_method$_ungrouped$LLSettingController$setLocationManager$(LLSettingController* __unused self, SEL __unused _cmd, AMapLocationManager * arg){ objc_setAssociatedObject(self, &_logos_property_key$_ungrouped$LLSettingController$locationManager, arg, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }
static char _logos_property_key$_ungrouped$LLSettingController$punchConfig;__attribute__((used)) static LLPunchConfig * _logos_method$_ungrouped$LLSettingController$punchConfig$(LLSettingController* __unused self, SEL __unused _cmd){ return objc_getAssociatedObject(self, &_logos_property_key$_ungrouped$LLSettingController$punchConfig); }__attribute__((used)) static void _logos_method$_ungrouped$LLSettingController$setPunchConfig$(LLSettingController* __unused self, SEL __unused _cmd, LLPunchConfig * arg){ objc_setAssociatedObject(self, &_logos_property_key$_ungrouped$LLSettingController$punchConfig, arg, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

static LLSettingController* _logos_method$_ungrouped$LLSettingController$init(_LOGOS_SELF_TYPE_INIT LLSettingController* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED{
  self = _logos_orig$_ungrouped$LLSettingController$init(self, _cmd);
  if(self){
    self.locationManager = [[_logos_static_class_lookup$AMapLocationManager() alloc] init];
    self.locationManager.delegate = (id<AMapLocationManagerDelegate>)self;
    self.punchConfig = [[LLPunchManager shared].punchConfig copy];
  }
  return self;
}

static void _logos_method$_ungrouped$LLSettingController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL LLSettingController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  _logos_orig$_ungrouped$LLSettingController$viewDidLoad(self, _cmd);
  
  [self setNavigationBar];
  [self tidyDataSource];
}


static void _logos_method$_ungrouped$LLSettingController$setNavigationBar(_LOGOS_SELF_TYPE_NORMAL LLSettingController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
  self.title = @"钉钉定位";
  self.view.backgroundColor = [UIColor whiteColor];
}


static void _logos_method$_ungrouped$LLSettingController$tidyDataSource(_LOGOS_SELF_TYPE_NORMAL LLSettingController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
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
          
          [[LLPunchManager shared] jumpToWifiList];
        }
      }];
      return;
    }
    self.punchConfig.wifiName = wifiName;
    self.punchConfig.wifiMacIp = wifiMac;
    
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


static void _logos_method$_ungrouped$LLSettingController$amapLocationManager$didUpdateLocation$reGeocode$(_LOGOS_SELF_TYPE_NORMAL LLSettingController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, AMapLocationManager * arg1, id arg2, id arg3){
  [self.locationManager stopUpdatingLocation];
  CLLocation *location = (CLLocation *)arg2;
  self.punchConfig.latitude  = [NSString stringWithFormat:@"%@",@(location.coordinate.latitude)];
  self.punchConfig.longitude = [NSString stringWithFormat:@"%@",@(location.coordinate.longitude)];
  self.punchConfig.accuracy  = [NSString stringWithFormat:@"%@",@(fmax(location.horizontalAccuracy,location.verticalAccuracy))];
  
  [self tidyDataSource];
}





static NSString * _logos_meta_method$_ungrouped$DTInfoPlist$getAppBundleId(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
  return @"com.laiwang.DingTalk";
}




static void _logos_method$_ungrouped$DTConversationListDataSource$controller$didChangeObject$atIndex$forChangeType$newIndex$(_LOGOS_SELF_TYPE_NORMAL DTConversationListDataSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, unsigned long long arg3, long long arg4, unsigned long long arg5) {
    
    _logos_orig$_ungrouped$DTConversationListDataSource$controller$didChangeObject$atIndex$forChangeType$newIndex$(self, _cmd, arg1, arg2, arg3, arg4, arg5);
    if (![LLPunchManager shared].punchConfig.enableRedEnvolop) {
        LogDebug(@"xxx未开启红包选型");
        return;
    }
    NSMutableArray *attachArr = [DingTalkRedEnvelop disposeConversation:arg2];
    [_logos_static_class_lookup$LLRedEnvelopSettingController() disposeRedEnvelop:attachArr];
}






static char _logos_property_key$_ungrouped$LLRedEnvelopSettingController$punchConfig;__attribute__((used)) static LLPunchConfig * _logos_method$_ungrouped$LLRedEnvelopSettingController$punchConfig$(LLRedEnvelopSettingController* __unused self, SEL __unused _cmd){ return objc_getAssociatedObject(self, &_logos_property_key$_ungrouped$LLRedEnvelopSettingController$punchConfig); }__attribute__((used)) static void _logos_method$_ungrouped$LLRedEnvelopSettingController$setPunchConfig$(LLRedEnvelopSettingController* __unused self, SEL __unused _cmd, LLPunchConfig * arg){ objc_setAssociatedObject(self, &_logos_property_key$_ungrouped$LLRedEnvelopSettingController$punchConfig, arg, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }


static LLRedEnvelopSettingController* _logos_method$_ungrouped$LLRedEnvelopSettingController$init(_LOGOS_SELF_TYPE_INIT LLRedEnvelopSettingController* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED{
    self = _logos_orig$_ungrouped$LLRedEnvelopSettingController$init(self, _cmd);
    if(self){
        self.punchConfig = [[LLPunchManager shared].punchConfig copy];

    }
    return self;
}
static void _logos_method$_ungrouped$LLRedEnvelopSettingController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL LLRedEnvelopSettingController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$LLRedEnvelopSettingController$viewDidLoad(self, _cmd);
    
    [self setNavigationBar];
    [self tidyDataSource];
}


static void _logos_method$_ungrouped$LLRedEnvelopSettingController$setNavigationBar(_LOGOS_SELF_TYPE_NORMAL LLRedEnvelopSettingController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    self.title = @"钉钉红包";
    self.view.backgroundColor = [UIColor whiteColor];
}


static void _logos_method$_ungrouped$LLRedEnvelopSettingController$tidyDataSource(_LOGOS_SELF_TYPE_NORMAL LLRedEnvelopSettingController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    
    NSMutableArray <DTSectionItem *> *sectionItems = [NSMutableArray array];
    
    DTCellItem *openRedCellItem = [NSClassFromString(@"DTCellItem") cellItemForSwitcherStyleWithTitle:@"是否开启红包插件" isSwitcherOn:self.punchConfig.enableRedEnvolop switcherValueDidChangeBlock:^(DTCellItem *item,DTCell *cell,UISwitch *aSwitch){
        self.punchConfig.enableRedEnvolop = aSwitch.on;
    }];
  
    DTCellItem *openPickMeCellItem = [NSClassFromString(@"DTCellItem") cellItemForSwitcherStyleWithTitle:@"是否抢自己的红包" isSwitcherOn:self.punchConfig.pickOwnerRedEnvelop switcherValueDidChangeBlock:^(DTCellItem *item,DTCell *cell,UISwitch *aSwitch){
        self.punchConfig.pickOwnerRedEnvelop = aSwitch.on;
    }];
  
    DTSectionItem *boolSectionItem = [_logos_static_class_lookup$DTSectionItem() itemWithSectionHeader:nil sectionFooter:nil];
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
            DTSectionItem *textSectionItem = [_logos_static_class_lookup$DTSectionItem() itemWithSectionHeader:nil sectionFooter:nil];
            textSectionItem.dataSource = cellItems;
            [sectionItems addObject:textSectionItem];
        }
    }
    






    
    
    DTCellItem *saveCellItem = [NSClassFromString(@"DTCellItem") cellItemForTitleOnlyStyleWithTitle:@"保存" cellDidSelectedBlock:^{
        [[LLPunchManager shared] saveUserSetting:self.punchConfig];
        [self.navigationController popViewControllerAnimated:YES];
    }];
    
    DTSectionItem *saveSectionItem = [_logos_static_class_lookup$DTSectionItem() itemWithSectionHeader:nil sectionFooter:nil];
    saveSectionItem.dataSource = @[saveCellItem];
    [sectionItems addObject:saveSectionItem];
    
    DTTableViewDataSource *dataSource = [[_logos_static_class_lookup$DTTableViewDataSource() alloc] init];
    dataSource.tableViewDataSource = sectionItems;
    self.dataSource = dataSource;
    
    [self.tableView reloadData];
}



static void _logos_meta_method$_ungrouped$LLRedEnvelopSettingController$disposeRedEnvelop$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSMutableArray * attachArr) {
    [attachArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        DTRedEnvelopServiceIMP *imp = [_logos_static_class_lookup$DTRedEnvelopServiceFactory() defaultServiceIMP];
        long long sid = [obj[@"sid"] longLongValue];
        NSString *cluseId = obj[@"clusterid"];
        NSString *congrats = obj[@"congrats"];
        NSString *sname = obj[@"sname"];
        LogDebug(@"sid = %lld,cluseid = %@",sid,cluseId);
        if (cluseId.length > 0){
            BOOL isMine = [obj[@"isMine"] boolValue];
          LogDebug(@"%@", isMine ? @"YES" : @"NO");
            BOOL canPick = NO;
            if (isMine && ![LLPunchManager shared].punchConfig.pickOwnerRedEnvelop) {
              LogDebug(@"不抢自己的");
                canPick = NO;
            }
            else {
                
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


static BOOL _logos_meta_method$_ungrouped$LLRedEnvelopSettingController$disposeCongratsRegula$congrats$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSString * regular, NSString * congrats){
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


static BOOL _logos_meta_method$_ungrouped$LLRedEnvelopSettingController$disposeNameCongratsRegula$name$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSString * regular, NSString * name){
    
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




static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$DTWebViewController = objc_getClass("DTWebViewController"); MSHookMessageEx(_logos_class$_ungrouped$DTWebViewController, @selector(pluginInstance:jsapiShouldCall:), (IMP)&_logos_method$_ungrouped$DTWebViewController$pluginInstance$jsapiShouldCall$, (IMP*)&_logos_orig$_ungrouped$DTWebViewController$pluginInstance$jsapiShouldCall$);Class _logos_class$_ungrouped$LAPluginInstanceCollector = objc_getClass("LAPluginInstanceCollector"); MSHookMessageEx(_logos_class$_ungrouped$LAPluginInstanceCollector, @selector(handleJavaScriptRequest:callback:), (IMP)&_logos_method$_ungrouped$LAPluginInstanceCollector$handleJavaScriptRequest$callback$, (IMP*)&_logos_orig$_ungrouped$LAPluginInstanceCollector$handleJavaScriptRequest$callback$);Class _logos_class$_ungrouped$DTSettingListViewController = objc_getClass("DTSettingListViewController"); MSHookMessageEx(_logos_class$_ungrouped$DTSettingListViewController, @selector(tidyDatasource), (IMP)&_logos_method$_ungrouped$DTSettingListViewController$tidyDatasource, (IMP*)&_logos_orig$_ungrouped$DTSettingListViewController$tidyDatasource);Class _logos_class$_ungrouped$DTTableViewController = objc_getClass("DTTableViewController"); { Class _logos_class$_ungrouped$LLSettingController = objc_allocateClassPair(_logos_class$_ungrouped$DTTableViewController, "LLSettingController", 0); objc_registerClassPair(_logos_class$_ungrouped$LLSettingController); MSHookMessageEx(_logos_class$_ungrouped$LLSettingController, @selector(init), (IMP)&_logos_method$_ungrouped$LLSettingController$init, (IMP*)&_logos_orig$_ungrouped$LLSettingController$init);MSHookMessageEx(_logos_class$_ungrouped$LLSettingController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$LLSettingController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$LLSettingController$viewDidLoad);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$LLSettingController, @selector(setNavigationBar), (IMP)&_logos_method$_ungrouped$LLSettingController$setNavigationBar, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$LLSettingController, @selector(tidyDataSource), (IMP)&_logos_method$_ungrouped$LLSettingController$tidyDataSource, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(AMapLocationManager *), strlen(@encode(AMapLocationManager *))); i += strlen(@encode(AMapLocationManager *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$LLSettingController, @selector(amapLocationManager:didUpdateLocation:reGeocode:), (IMP)&_logos_method$_ungrouped$LLSettingController$amapLocationManager$didUpdateLocation$reGeocode$, _typeEncoding); }{ class_addMethod(_logos_class$_ungrouped$LLSettingController, @selector(locationManager), (IMP)&_logos_method$_ungrouped$LLSettingController$locationManager$, [[NSString stringWithFormat:@"%s@:", @encode(AMapLocationManager *)] UTF8String]);class_addMethod(_logos_class$_ungrouped$LLSettingController, @selector(setLocationManager:), (IMP)&_logos_method$_ungrouped$LLSettingController$setLocationManager$, [[NSString stringWithFormat:@"v@:%s", @encode(AMapLocationManager *)] UTF8String]);} { class_addMethod(_logos_class$_ungrouped$LLSettingController, @selector(punchConfig), (IMP)&_logos_method$_ungrouped$LLSettingController$punchConfig$, [[NSString stringWithFormat:@"%s@:", @encode(LLPunchConfig *)] UTF8String]);class_addMethod(_logos_class$_ungrouped$LLSettingController, @selector(setPunchConfig:), (IMP)&_logos_method$_ungrouped$LLSettingController$setPunchConfig$, [[NSString stringWithFormat:@"v@:%s", @encode(LLPunchConfig *)] UTF8String]);}  class_addProtocol(_logos_class$_ungrouped$LLSettingController, objc_getProtocol("AMapLocationManagerDelegate")); }Class _logos_class$_ungrouped$DTInfoPlist = objc_getClass("DTInfoPlist"); Class _logos_metaclass$_ungrouped$DTInfoPlist = object_getClass(_logos_class$_ungrouped$DTInfoPlist); MSHookMessageEx(_logos_metaclass$_ungrouped$DTInfoPlist, @selector(getAppBundleId), (IMP)&_logos_meta_method$_ungrouped$DTInfoPlist$getAppBundleId, (IMP*)&_logos_meta_orig$_ungrouped$DTInfoPlist$getAppBundleId);Class _logos_class$_ungrouped$DTConversationListDataSource = objc_getClass("DTConversationListDataSource"); MSHookMessageEx(_logos_class$_ungrouped$DTConversationListDataSource, @selector(controller:didChangeObject:atIndex:forChangeType:newIndex:), (IMP)&_logos_method$_ungrouped$DTConversationListDataSource$controller$didChangeObject$atIndex$forChangeType$newIndex$, (IMP*)&_logos_orig$_ungrouped$DTConversationListDataSource$controller$didChangeObject$atIndex$forChangeType$newIndex$);{ Class _logos_class$_ungrouped$LLRedEnvelopSettingController = objc_allocateClassPair(_logos_class$_ungrouped$DTTableViewController, "LLRedEnvelopSettingController", 0); objc_registerClassPair(_logos_class$_ungrouped$LLRedEnvelopSettingController); Class _logos_metaclass$_ungrouped$LLRedEnvelopSettingController = object_getClass(_logos_class$_ungrouped$LLRedEnvelopSettingController); MSHookMessageEx(_logos_class$_ungrouped$LLRedEnvelopSettingController, @selector(init), (IMP)&_logos_method$_ungrouped$LLRedEnvelopSettingController$init, (IMP*)&_logos_orig$_ungrouped$LLRedEnvelopSettingController$init);MSHookMessageEx(_logos_class$_ungrouped$LLRedEnvelopSettingController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$LLRedEnvelopSettingController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$LLRedEnvelopSettingController$viewDidLoad);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$LLRedEnvelopSettingController, @selector(setNavigationBar), (IMP)&_logos_method$_ungrouped$LLRedEnvelopSettingController$setNavigationBar, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$LLRedEnvelopSettingController, @selector(tidyDataSource), (IMP)&_logos_method$_ungrouped$LLRedEnvelopSettingController$tidyDataSource, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSMutableArray *), strlen(@encode(NSMutableArray *))); i += strlen(@encode(NSMutableArray *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_metaclass$_ungrouped$LLRedEnvelopSettingController, @selector(disposeRedEnvelop:), (IMP)&_logos_meta_method$_ungrouped$LLRedEnvelopSettingController$disposeRedEnvelop$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(BOOL), strlen(@encode(BOOL))); i += strlen(@encode(BOOL)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_metaclass$_ungrouped$LLRedEnvelopSettingController, @selector(disposeCongratsRegula:congrats:), (IMP)&_logos_meta_method$_ungrouped$LLRedEnvelopSettingController$disposeCongratsRegula$congrats$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(BOOL), strlen(@encode(BOOL))); i += strlen(@encode(BOOL)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_metaclass$_ungrouped$LLRedEnvelopSettingController, @selector(disposeNameCongratsRegula:name:), (IMP)&_logos_meta_method$_ungrouped$LLRedEnvelopSettingController$disposeNameCongratsRegula$name$, _typeEncoding); }{ class_addMethod(_logos_class$_ungrouped$LLRedEnvelopSettingController, @selector(punchConfig), (IMP)&_logos_method$_ungrouped$LLRedEnvelopSettingController$punchConfig$, [[NSString stringWithFormat:@"%s@:", @encode(LLPunchConfig *)] UTF8String]);class_addMethod(_logos_class$_ungrouped$LLRedEnvelopSettingController, @selector(setPunchConfig:), (IMP)&_logos_method$_ungrouped$LLRedEnvelopSettingController$setPunchConfig$, [[NSString stringWithFormat:@"v@:%s", @encode(LLPunchConfig *)] UTF8String]);}  }} }
#line 460 "/Users/yolande/code/jailbreak/DingTalkdFucker/DingTalkFucker/DingTalkFucker.xm"
