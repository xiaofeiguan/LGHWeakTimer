//
//  NSTimer+Support.m
//  LGHWeakTimer
//
//  Created by 刘观华 on 2018/8/2.
//  Copyright © 2018年 刘观华. All rights reserved.
//

#import "NSTimer+Support.h"

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
@end
