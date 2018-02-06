//
//  LLPunchConfig.m
//  test2
//
//  Created by fqb on 2017/12/22.
//  Copyright © 2017年 kevliule. All rights reserved.
//

#import "LLPunchConfig.h"

static NSString * const kLLIsOpenPunchHelperKey = @"LLIsOpenPunchHelper";
static NSString * const kLLIsLocationPunchModeKey = @"LLIsLocationPunchMode";
static NSString * const kLLWifiNameKey = @"LLWifiName";
static NSString * const kLLWifiMacIpKey = @"LLWifiMacIp";
static NSString * const kLLAccuracyKey = @"LLAccuracy";
static NSString * const kLLLatitudeKey = @"LLLatitude";
static NSString * const kLLLongitudeKey = @"LLLongitude";

@implementation LLPunchConfig

- (instancetype)initWithCoder:(NSCoder *)coder
{
  if (self = [super init]) {
    _isOpenPunchHelper = [coder decodeBoolForKey:kLLIsOpenPunchHelperKey];
    _isLocationPunchMode = [coder decodeBoolForKey:kLLIsLocationPunchModeKey];
    _wifiName = [[coder decodeObjectForKey:kLLWifiNameKey] copy];
    _wifiMacIp = [[coder decodeObjectForKey:kLLWifiMacIpKey] copy];
    _accuracy = [[coder decodeObjectForKey:kLLAccuracyKey] copy];
    _latitude = [[coder decodeObjectForKey:kLLLatitudeKey] copy];
    _longitude = [[coder decodeObjectForKey:kLLLongitudeKey] copy];
    
    self.enableRedEnvolop = [coder decodeBoolForKey:@"enableRedEnvolop"];
    self.delayTime = [coder decodeFloatForKey:@"delayTime"];
    self.pickOwnerRedEnvelop = [coder decodeBoolForKey:@"pickOwnerRedEnvelop"];
    self.regularText = [coder decodeObjectForKey:@"regularText"];
    self.nameregularText = [coder decodeObjectForKey:@"nameregularText"];
    self.redenvelopTypeText = [coder decodeObjectForKey:@"redenvelopTypeText"];
  }
  return self;
}

- (void)encodeWithCoder:(NSCoder *)coder
{
  [coder encodeBool:_isOpenPunchHelper forKey:kLLIsOpenPunchHelperKey];
  [coder encodeBool:_isLocationPunchMode forKey:kLLIsLocationPunchModeKey];
  [coder encodeObject:_wifiName forKey:kLLWifiNameKey];
  [coder encodeObject:_wifiMacIp forKey:kLLWifiMacIpKey];
  [coder encodeObject:_accuracy forKey:kLLAccuracyKey];
  [coder encodeObject:_latitude forKey:kLLLatitudeKey];
  [coder encodeObject:_longitude forKey:kLLLongitudeKey];
  
  [coder encodeBool:self.enableRedEnvolop forKey:@"enableRedEnvolop"];
  [coder encodeFloat:self.delayTime forKey:@"delayTime"];
  [coder encodeBool:self.pickOwnerRedEnvelop forKey:@"pickOwnerRedEnvelop"];
  [coder encodeObject:self.regularText forKey:@"regularText"];
  [coder encodeObject:self.nameregularText forKey:@"nameregularText"];
  [coder encodeObject:self.redenvelopTypeText forKey:@"redenvelopTypeText"];
}

- (id)copyWithZone:(nullable NSZone *)zone{
  LLPunchConfig *config = [[[self class] alloc] init];
  config.isOpenPunchHelper = self.isOpenPunchHelper;
  config.isLocationPunchMode = self.isLocationPunchMode;
  config.wifiName = self.wifiName;
  config.wifiMacIp = self.wifiMacIp;
  config.accuracy = self.accuracy;
  config.latitude = self.latitude;
  config.longitude = self.longitude;
  config.enableRedEnvolop = self.enableRedEnvolop;
  config.delayTime = self.delayTime;
  config.pickOwnerRedEnvelop = self.pickOwnerRedEnvelop;
  config.regularText = self.regularText;
  config.nameregularText = self.nameregularText;
  config.redenvelopTypeText = self.redenvelopTypeText;
  return config;
}

@end
