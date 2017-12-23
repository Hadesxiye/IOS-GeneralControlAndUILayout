//
//  ViewController.m
//  UIView基础
//
//  Created by Hades on 2017/11/10.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
     创建一个UIView对象
     UIView是IOS中的视图对象
     显示在屏幕上的对象一定都继承UIView
     屏幕上能看到的对象都是UIView的子类
     UIView是一个矩形对象，有背景颜色，可以显示，有层级关系
     */
    // Do any additional setup after loading the view, typically from a nib.
    UIView* view = [[UIView alloc]init];
    //设置位置
    view.frame = CGRectMake(100, 100, 100, 100);
    view.backgroundColor = [UIColor whiteColor];
    /*将新建视图添加到父类视图上
     1,将新建视图显示到屏幕上
     2，将视图作为父亲视图的子视图管理起来
    */
    [self.view addSubview:view];
    //是否隐藏视图对象
    //yes表示隐藏，no表示不隐藏   默认为no
    view.hidden = NO;
    //设置视图的透明度
    //alpha = 1；不透明
    //alpha = 0；透明
    //alpha = 0.5；半透明
    view.alpha = 0.75;
    self.view.backgroundColor = [UIColor blueColor];
    //设置是否开启透明度
    view.opaque = YES;
    //将自动从父亲视图删除
    [view removeFromSuperview];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
