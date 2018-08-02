//
//  SecondViewController.m
//  LGHWeakTimer
//
//  Created by 刘观华 on 2018/8/2.
//  Copyright © 2018年 刘观华. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property(nonatomic,strong)NSTimer *timer;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    __weak SecondViewController *weakSelf = self;
    _timer = [NSTimer scheduledTimerWithTimeInterval:2.0f target:weakSelf selector:@selector(nowSecond) userInfo:nil repeats:YES];
    
}
-(void)nowSecond
{
    NSLog(@"%s",__FUNCTION__);
}

-(void)dealloc
{
    NSLog(@"%s",__FUNCTION__);
}

@end
