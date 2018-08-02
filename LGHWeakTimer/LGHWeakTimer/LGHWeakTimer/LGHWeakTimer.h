//
//  LGHWeakTimer.h
//  LGHWeakTimer
//
//  Created by 刘观华 on 2018/8/2.
//  Copyright © 2018年 刘观华. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LGHWeakTimerDelegate

-(void)lgh_doPoll;

@end

@interface LGHWeakTimer : NSObject

@property(nonatomic,weak)id<LGHWeakTimerDelegate> delegate;

-(void)startPollingWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats;

-(void)stopPolling;

@end
