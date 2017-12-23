//
//  ViewController.m
//  UIButton事件
//
//  Created by Hades on 2017/11/10.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void) createBtn
{
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn setTitle:@"anniu" forState:UIControlStateNormal];
    /*
     向按钮添加事件函数
     P1：谁来实现这个事件函数，实现者对象就是这个“谁”
     P2：@selector（pressBtn）：函数对象，当按钮满足P3事件类型时，调用函数
     P3：UIControlEvent：事件处理函数类型
     UIControlEventTouchUpIside：当手指离开屏幕并且手指的位置在按钮范围内
     UIControlEventTouchDown：当手指触碰到屏幕上
     */
    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    //触碰时调用的事件函数
    [btn addTarget:self action:@selector(touchdown) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn];
    
    UIButton* btn02 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn02.frame = CGRectMake(200, 200, 200, 200);
    
    [btn02 setTitle:@"anniu 02" forState:UIControlStateNormal];
    //可以是多个按钮使用同一个事件函数来处理不同按钮的事件
    [btn02 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn02];
    
    //设置按钮的标记值
    btn.tag = 101;
    btn02.tag = 102;
}

-(void)pressBtn:(UIButton*)btn
{
    if(btn.tag ==101)
    {
       NSLog(@"1号猛男插入了!=w=");
    }
    if(btn.tag ==102)
    {
        NSLog(@"2号猛男插入！");
    }
   
}

-(void)touchdown
{
    NSLog(@"=w=触碰成功！");
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createBtn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
