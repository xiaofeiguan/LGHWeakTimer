//
//  LGHWeakTimer.m
//  LGHWeakTimer
//
//  Created by 刘观华 on 2018/8/2.
//  Copyright © 2018年 刘观华. All rights reserved.
//

#import "LGHWeakTimer.h"
#import "NSTimer+Support.h"
@interface LGHWeakTimer()

@property(nonatomic)NSTimer *pollTimer;

@end

@implementation LGHWeakTimer

-(instancetype)init
{
    return [super init];
}

-(void)startPollingWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats
{
    __weak LGHWeakTimer *weakSelf = self;
    _pollTimer = [NSTimer scheduledTimerWithTimeInterval:interval block:^{
        LGHWeakTimer *strongSelf = weakSelf;
        [strongSelf.delegate lgh_doPoll];
    } repeats:repeats];
}

-(void)stopPolling
{
    [_pollTimer invalidate];
    _pollTimer = nil;
}

-(void)dealloc
{
    [_pollTimer invalidate];
}

@end
