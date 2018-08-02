//
//  ViewController.m
//  LGHWeakTimer
//
//  Created by 刘观华 on 2018/8/2.
//  Copyright © 2018年 刘观华. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (IBAction)presentFirstController:(UIButton *)sender {
    [self.navigationController pushViewController:[FirstViewController new] animated:YES];
}

- (IBAction)presentSecondController:(UIButton *)sender {
    [self.navigationController pushViewController:[SecondViewController new] animated:YES];
}



@end
