//
//  ViewController.m
//  LGHWeakTimer
//
//  Created by 刘观华 on 2018/8/2.
//  Copyright © 2018年 刘观华. All rights reserved.
//

#import "ViewController.h"
#import "LGHWeakTimer.h"
@interface ViewController ()<LGHWeakTimerDelegate>

@property (nonatomic,strong) LGHWeakTimer *timer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _timer = [[LGHWeakTimer alloc]init];
    [_timer startPollingWithTimeInterval:2.0 repeats:YES];
    _timer.delegate = self;
}

-(void)lgh_doPoll
{
    NSLog(@"%s",__FUNCTION__);
}


@end
