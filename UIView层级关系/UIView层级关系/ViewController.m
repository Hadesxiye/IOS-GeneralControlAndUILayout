//
//  ViewController.m
//  UIView层级关系
//
//  Created by Hades on 2017/11/11.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //创建3个视图对象；
    UIView* view01 = [[UIView alloc]init];
    view01.frame = CGRectMake(100, 100, 150, 150);
    view01.backgroundColor = [UIColor blueColor];
    
    UIView* view02 = [[UIView alloc]init];
    view02.frame = CGRectMake(125, 125, 150, 150);
    view02.backgroundColor = [UIColor orangeColor];
    
    UIView* view03 = [[UIView alloc]init];
    view03.frame = CGRectMake(150, 150, 150, 150);
    view03.backgroundColor = [UIColor greenColor];
    
    
    UILabel* label = [[UILabel alloc]init];
    label.frame = CGRectMake(125, 125, 150, 150);
    label.text = @"张钰是傻逼";
    
    
    //将是三个视图对象显示到屏幕上
    //并添加到父亲视图上
    [self.view addSubview:view01];
    [self.view addSubview:view02];
    [self.view addSubview:view03];
    [self.view addSubview:label];
    /*
     将某一个视图调整到最前面显示
     参数：UIView对象，调整哪一个视图到最前方
     */
    [self.view bringSubviewToFront:view02];
    [self.view bringSubviewToFront:label];
    //调整某一个视图到最后
    [self.view sendSubviewToBack:view03];
    //subciews管理所有self.view的子视图的数组
    UIView* viewFront = self.view.subviews[2];
    UIView* viewBack = self.view.subviews[0];
    //清除view02 ，顶层变成01，但view02依旧在数组中
    [view02 removeFromSuperview];
    
    if(viewBack == view03)
    {
        NSLog(@"底层相等");
    }
    
    if(viewFront == view02)
    {
        NSLog(@"D顶层相等");
    }

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
