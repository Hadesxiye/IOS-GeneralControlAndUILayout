//
//  ViewController.m
//  UIViewController使用
//
//  Created by Hades on 2017/11/11.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import "ViewController.h"
#import "ViewController02.h"
@interface ViewController ()

@end

@implementation ViewController

//当屏幕被点击时，调用此函数
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //创建视图控制器二
    ViewController02* vc = [[ViewController02 alloc]init];
    
    //显示一个新的视图控制器到屏幕上
    //P1：新的视图控制器对象
    //P2：是否使用动画切换效果
    //P3：切换结束后功能调用，不需要传nil值即可
    [self presentViewController:vc animated:YES completion:nil];
}

//程序第一次加载视图时调用
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor blueColor];
    NSLog(@"viewDidLoad 第一次加载视图");

}
//当视图控制器的视图即将显示时，调用此函数
//视图分为：1，显示前（未显示）状态 2，正处于显示状态 3，已经被隐藏
//参数：表示是否用动画切换后显示
- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"viewwillappear 视图即将显示");
}
//视图即将消失时调用此函数
//参数：表示是否有动画切换后消失
//当前状态视图显示在屏幕上
-(void)viewillDisappear:(BOOL)animated
{
    NSLog(@"viewwilldisappear 视图即将消失");
}

//当视图已经显示在屏幕后的瞬间调用此函数
//参数：表示是否动画切换在显示后
//当前状态已经显示在屏幕
-(void)viewDidAppear:(BOOL)animated
{
    NSLog(@"viewDidAppear 视图已经显示");
}

//当前视图已经从屏幕消失
//参数：表示是否用动画切换显示
//当前状态当前视图已经从屏幕消失
-(void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"viewDidDisappear 视图已经消失");
}
//内存过低警告接受函数
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
