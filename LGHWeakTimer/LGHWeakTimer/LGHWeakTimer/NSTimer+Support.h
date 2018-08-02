//
//  NSTimer+Support.h
//  LGHWeakTimer
//
//  Created by 刘观华 on 2018/8/2.
//  Copyright © 2018年 刘观华. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (Support)

+(NSTimer*)scheduledTimerWithTimeInterval:(NSTimeInterval)interval block:(void (^)(void))block repeats:(BOOL)repeats ;

@end
