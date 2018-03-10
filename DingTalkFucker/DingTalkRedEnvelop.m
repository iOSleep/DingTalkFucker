//
//  DingTalkRedEnvelop.m
//  TestTweak
//
//  Created by lingyohunl on 2016/12/8.
//  Copyright © 2016年 yohunl. All rights reserved.
//

#import "DingTalkRedEnvelop.h"
#import "LLPunchManager.h"
#import "DingTalkRedHead.h"
#import "IdentfierLog.h"
/*
 {
 "contentType" : 901,
 "@Type" : "WKIDLContentModel",
 "attachments" : [
 {
 "@Type" : "WKIDLAttachmentModel",
 "size" : 0,
 "type" : 0,
 "extension" : {
 "amount" : "0.01",
 "clusterid" : "5PnPxu8C",
 "sname" : "林晓然",
 "size" : "1",
 "congrats" : "恭喜发财，大吉大利！",
 "sid" : "45049990",
 "type" : "0",
 "oid" : "0"
 },
 "isPreload" : false
 }
 ]
 }
 
 "contentType" : 905,
 "@Type" : "WKIDLContentModel",
 "attachments" : [
 {
 "isPreload" : false,
 "@Type" : "WKIDLAttachmentModel",
 "size" : 0,
 "type" : 905,
 "extension" : {
 "amount" : "0.88",
 "clusterid" : "8Wgs7WF9",
 "p_name" : "圣诞红包",
 "p_mediaId" : "@lA_OlIjCfc47tmQkzgQzyLg",
 "bg_mediaId" : "@lALOlGDyZ80B780Bdw",
 "type" : "0",
 "size" : "3",
 "theme_id" : "1",
 "oid" : "0",
 "sid" : "45049990",
 "congrats" : "圣诞快乐，预祝元旦快乐，顺便拜个早年",
 "receivers" : "null"
 },
 "url" : "url"
 }
 ]
	}
 
*/
@interface DingTalkRedEnvelop ()

@end
@implementation DingTalkRedEnvelop
//红包有很多类型,我们需要判断这种类型我们可以不可以抢,目前已知有 901,902,905 是节日红包
+ (BOOL)canDisposeRedenvelopType:(NSInteger) type {
    __block BOOL canDisposeFlag = NO;
    NSMutableArray<NSNumber *> * redEnvelopTypeArr = [LLPunchManager shared].redEnvelopTypeArr;
    [redEnvelopTypeArr enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (type == obj.integerValue) {
            canDisposeFlag = YES;
            *stop = YES;
        }
    }];
    return canDisposeFlag;
}
+ (NSMutableArray *)disposeConversation:(WKBizConversation *)converdation {
    
  LogInfo(@"disposeConversation_sation = %@", converdation);
    //WKBizConversation *converdation = sation;
  NSMutableArray *retArr = [NSMutableArray new];
  LogInfo(@"disposeConversation_converdation.latestMessage = %@", converdation.latestMessage);
  NSString *attachmentsJson = converdation.latestMessage.attachmentsJson;
  LogInfo(@"disposeConversation_attachmentsJson = %@", attachmentsJson);
  if (attachmentsJson.length > 0) {
    NSData* jsonData = [attachmentsJson dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableLeaves error:nil];
    LogInfo(@"disposeConversation_dict = %@", dict);
    NSNumber *contentType = dict[@"contentType"];
    LogInfo(@"disposeConversation_contentType = %@", contentType);
    if ([self canDisposeRedenvelopType:contentType.integerValue] ) {//红包
      NSMutableDictionary *retDict = [NSMutableDictionary new];
      retDict[@"contentType"] = contentType;
      NSArray *arr = dict[@"attachments"];
      LogInfo(@"disposeConversation_arr = %@", arr);
      if (arr.count > 0) {
        [arr enumerateObjectsUsingBlock:^(NSDictionary *attachmentDict, NSUInteger idx, BOOL * _Nonnull stop) {
          NSDictionary *extension = attachmentDict[@"extension"];
          LogInfo(@"disposeConversation_extension = %@", extension);
          retDict[@"clusterid"] = extension[@"clusterid"];
          retDict[@"sid"] = extension[@"sid"];
          retDict[@"isMine"] = @([converdation.latestMessage isMine]);
          retDict[@"congrats"] = extension[@"congrats"];
          retDict[@"sname"] = extension[@"sname"];
          // 原始值传递，没有解析
          retDict[@"amount"] = extension[@"amount"];
          LogInfo(@"disposeConversation_retDict = %@", retDict);
          [retArr addObject:retDict];
        }];
      }
      
    }
  }
  return retArr;  
}

@end
