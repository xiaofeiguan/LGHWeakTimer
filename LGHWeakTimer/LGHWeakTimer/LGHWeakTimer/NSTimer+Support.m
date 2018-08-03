//
//  NSTimer+Support.m
//  LGHWeakTimer
//
//  Created by 刘观华 on 2018/8/2.
//  Copyright © 2018年 刘观华. All rights reserved.
//

#import "NSTimer+Support.h"
#import "LGHWeakProxy.h"

@implementation NSTimer (Support)
+(NSTimer*)scheduledTimerWithTimeInterval:(NSTimeInterval)interval block:(void (^)())block repeats:(BOOL)repeats
{
    return [NSTimer scheduledTimerWithTimeInterval:interval target:self selector:@selector(lgh_blockInvoke:) userInfo:[block copy] repeats:repeats];
}

+(void)lgh_blockInvoke:(NSTimer *)timer
{
    void(^block)() = timer.userInfo;
    if (block) {
        block();
    }
}


+(NSTimer*)lgh_scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(id)userInfo repeats:(BOOL)yesOrNo
{
    LGHWeakProxy *proxy = [LGHWeakProxy proxyWithTarget:aTarget];
    return [NSTimer timerWithTimeInterval:ti target:proxy selector:aSelector userInfo:userInfo repeats:yesOrNo];
}


@end
