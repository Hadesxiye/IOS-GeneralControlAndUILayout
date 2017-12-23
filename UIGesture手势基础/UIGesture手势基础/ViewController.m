//
//  ViewController.m
//  UIGesture手势基础
//
//  Created by Hades on 2017/11/16.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //加载图片从硬盘到内存中
    UIImage* image = [UIImage imageNamed:@"1.jpg"];
    
    //创建图像视图
    _imageView = [[UIImageView alloc]init];
    
    //将图像赋值
    _imageView.image = image;
    _imageView.frame = CGRectMake(50, 80, 200, 300);
    
    [self.view addSubview:_imageView];
    
    //开启交互事件响应开关
    //yes：可以响应交互事件
    //no：不接受响应事件，默认值为no
    _imageView.userInteractionEnabled = YES;
    
    //创建一个点击手势对象
    //UITapGestureRecognize：点击手势类
    //功能：识别点击手势
    //p1：响应事件的拥有者对象，self表示当前视图控制器
    //p2：响应事件函数
    UITapGestureRecognizer* tapOneGes = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapOneAct:)];
    
    //表示手势识别事件的事件类型：几次点击时触发
    //默认值为：1
    tapOneGes.numberOfTapsRequired = 1;
    
    //表示几个手指点击时触发此事件函数
    //默认值为：1
    tapOneGes.numberOfTouchesRequired = 1;
    
    //将点击事件添加到视图中，视图即可响应事件
    [_imageView addGestureRecognizer:tapOneGes];

    UITapGestureRecognizer* tapTwo = [[UITapGestureRecognizer alloc]
                                    
                                      initWithTarget:self action:@selector(tapTwo:)];
    
    tapTwo.numberOfTapsRequired = 2;
    
    tapTwo.numberOfTouchesRequired = 1;
    
    [_imageView addGestureRecognizer:tapTwo];
    
    //当单击操作遇到双击操作时，单击操作失效
    //避免双击时出现单击事件的bug
    [tapOneGes requireGestureRecognizerToFail:tapTwo];
    
}
//事件响应函数
//参数手势点击事件对象
//单机操作函数
-(void)tapOneAct:(UITapGestureRecognizer*)tap
{
    
    UIImageView* imageView = (UIImageView*)tap.view;
    //开始动画
    [UIView beginAnimations:nil context:nil];
    
    imageView.frame = CGRectMake(50 , 80, 200, 300);
    
    [UIView commitAnimations];
}
//双击操作函数
-(void)tapTwo:(UITapGestureRecognizer*)tap
{
    //获取手势监控的视图对象
    UIImageView* imageView = (UIImageView*)tap.view;
    
    //开始动画过程
    [UIView beginAnimations:nil context:nil];
    //设置动画时间
    [UIView setAnimationDuration:0.5];
    
    imageView.frame = CGRectMake(0, 0,self.view.frame.size.width, self.view.frame.size.height);
    
    //结束动画过程
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
