//
//  ThirdViewController.m
//  LGHWeakTimer
//
//  Created by 刘观华 on 2018/8/3.
//  Copyright © 2018年 刘观华. All rights reserved.
//

#import "ThirdViewController.h"
#import "NSTimer+Support.h"
#import "LGHWeakProxy.h"
#import "YYWeakProxy.h"
@interface ThirdViewController ()

@end



@implementation ThirdViewController
{
    NSTimer *_proxyTimer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
//    LGHWeakProxy *proxy = [LGHWeakProxy proxyWithTarget:self];
    
    YYWeakProxy *proxy = [YYWeakProxy proxyWithTarget:self];
    
    _proxyTimer= [NSTimer timerWithTimeInterval:2.0f target:proxy selector:@selector(showThird) userInfo:nil repeats:YES];
    
}

-(void)showThird
{
    NSLog(@"%s",__FUNCTION__);
}

-(void)dealloc
{
    NSLog(@"%s",__FUNCTION__);
}


@end
