//
//  GDTrackTool.m
//  GDTrackToolDemo
//
//  Created by 黄彬彬 on 2019/7/16.
//  Copyright © 2019 黄彬彬. All rights reserved.
//

#import "GDTrackTool.h"
#import <UMMobClick/MobClick.h>

#define UMENG_KEY @""

@implementation GDTrackTool

+ (void)configure {
    UMConfigInstance.appKey = UMENG_KEY;
    UMConfigInstance.eSType = E_UM_NORMAL;
//    UMConfigInstance.ePolicy = 0;
    NSDictionary *infoDict = [[NSBundle mainBundle] infoDictionary];
    NSString *currentVersion = [infoDict objectForKey:@"CFBundleShortVersionString"];
    [MobClick setAppVersion:currentVersion];
    [MobClick startWithConfigure:UMConfigInstance];

#ifdef DEBUG
    [MobClick setLogEnabled:YES];
    [MobClick setCrashReportEnabled:NO];
#endif
}

+(void)beginLogPageID:(NSString *)pageID {
    [MobClick beginLogPageView:pageID];
    NSLog(@"进入页面-------->%@", pageID);
}

+(void)endLogPageID:(NSString *)pageID {
    [MobClick endLogPageView:pageID];
    NSLog(@"离开页面-------->%@", pageID);
}

+(void)logEvent:(NSString*)eventId {
//    [MobClick event:eventId];、
    NSLog(@"事件点击-------->%@", eventId);
}

@end
