//
//  LLPunchConfig.h
//  test2
//
//  Created by fqb on 2017/12/22.
//  Copyright © 2017年 kevliule. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LLPunchConfig : NSObject <NSCoding,NSCopying>

@property (nonatomic, assign) BOOL isOpenPunchHelper; //是否开启打卡助手
@property (nonatomic, assign) BOOL isLocationPunchMode; //是否是定位打卡模式
@property (nonatomic, copy) NSString *wifiName; //wifi名称
@property (nonatomic, copy) NSString *wifiMacIp; //wifi mac 地址
@property (nonatomic, copy) NSString *accuracy; //定位精度
@property (nonatomic, copy) NSString *latitude; //定位纬度
@property (nonatomic, copy) NSString *longitude; //定位经度

@property (nonatomic, assign) BOOL enableRedEnvolop;///< 是否开启红包
@property (nonatomic, assign) CGFloat delayTime;///<延迟多少秒抢
@property (nonatomic, assign) BOOL pickOwnerRedEnvelop; ///< 是否抢自己发出去的红包
@property (nonatomic, strong) NSString *regularText;///< 内容的正则表达式
@property (nonatomic, strong) NSString *nameregularText;///< 名字正则表达式
@property (nonatomic, strong) NSString *redenvelopTypeText;//红包的类型,目前支持的是 901,902,905

@end
