//
//  IdentfierLog.h
//  DingTalkFucker
//
//  Created by 马旭 on 2018/2/7.
//

#ifndef IdentfierLog_h
#define IdentfierLog_h

#import <Foundation/Foundation.h>

#define INFO_NEW_FMT(fmt) \
[NSString stringWithFormat:@"[Fucker][INFO] (%d) %@", \
__LINE__, \
fmt]

#define DEBUG_NEW_FMT(fmt) \
[NSString stringWithFormat:@"[Fucker][DEBUG] (%d) %@", \
__LINE__, \
fmt]

#define ERROR_NEW_FMT(fmt) \
[NSString stringWithFormat:@"[Fucker][ERROR] (%d) %@", \
__LINE__, \
fmt]

#define LogInfo(fmt,...) NSLog(INFO_NEW_FMT(fmt),##__VA_ARGS__,nil)
#define LogDebug(fmt,...) NSLog(DEBUG_NEW_FMT(fmt),##__VA_ARGS__,nil)
#define LogError(fmt,...) NSLog(ERROR_NEW_FMT(fmt),##__VA_ARGS__,nil)


#endif /* IdentfierLog_h */
