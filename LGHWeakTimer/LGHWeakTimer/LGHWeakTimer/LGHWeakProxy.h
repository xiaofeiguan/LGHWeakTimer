//
//  LGHWeakProxy.h
//  LGHWeakTimer
//
//  Created by 刘观华 on 2018/8/3.
//  Copyright © 2018年 刘观华. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
sample code:

@implementation MyView {
    NSTimer *_timer;
}

- (void)initTimer {
    LGHWeakProxy *proxy = [LGHWeakProxy proxyWithTarget:self];
    _timer = [NSTimer timerWithTimeInterval:0.1 target:proxy selector:@selector(tick:) userInfo:nil repeats:YES];
}

- (void)tick:(NSTimer *)timer {...}
@end
*/

NS_ASSUME_NONNULL_BEGIN

@interface LGHWeakProxy : NSProxy
@property (nullable, nonatomic, weak, readonly) id target;

- (instancetype)initWithTarget:(id)target;


+ (instancetype)proxyWithTarget:(id)target;
@end

NS_ASSUME_NONNULL_END
