//
//  FirstViewController.m
//  LGHWeakTimer
//
//  Created by 刘观华 on 2018/8/2.
//  Copyright © 2018年 刘观华. All rights reserved.
//

#import "FirstViewController.h"
#import "LGHWeakTimer.h"

@interface FirstViewController ()<LGHWeakTimerDelegate>

@property (nonatomic,strong) LGHWeakTimer *timer;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor darkGrayColor];
    _timer = [[LGHWeakTimer alloc]init];
    [_timer startPollingWithTimeInterval:2.0 repeats:YES];
    _timer.delegate = self;
}



-(void)lgh_doPoll
{
    NSLog(@"%s",__FUNCTION__);
}

-(void)dealloc
{
    NSLog(@"%s",__FUNCTION__);
}



@end
