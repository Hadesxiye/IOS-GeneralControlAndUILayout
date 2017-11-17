//
//  ViewController.m
//  UIGesture扩展手势
//
//  Created by Hades on 2017/11/17.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //创建一个图像视图对象
    UIImageView* iView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1.jpg"]];
    
    iView.frame = CGRectMake(50, 50, 200, 300);
    
    iView.userInteractionEnabled = YES;

    //创建一个平移手势
    //p1:事件函数处理对象
    //p2：事件函数
    UIPanGestureRecognizer* pan = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panAct:)];
    
    //将手势添加到图像视图中
    [iView addGestureRecognizer:pan];
    //将移动事件手势取消
    [iView removeGestureRecognizer:pan];
    
    [self.view addSubview:iView];
    
    //创建一个滑动手势
    //P1：事件函数处理对象
    //P2：事件函数
    //单独创建向上滑动手势
    UISwipeGestureRecognizer* swipeup = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeAct:)];
    //创建向下滑动手势
    UISwipeGestureRecognizer* swipedown = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeAct:)];

    /*设定滑动手势接受的事件类型
     UISwipeGestureRecognizerDirectionUp    向上滑动
     UISwipeGestureRecognizerDirectionDown  向下滑动
     UISwipeGestureRecognizerDirectionLeft  向左滑动
     UISwipeGestureRecognizerDirectionRight 向右滑动
     注意手势判断不能用|（或）的方式判断，要创建两个或者多个swipe手势，分别设定其方向,然后在事件函数里做判断才是正确！
     */
    swipeup.direction = UISwipeGestureRecognizerDirectionUp;
    
    swipedown.direction = UISwipeGestureRecognizerDirectionDown;
    
    [iView addGestureRecognizer:swipeup];
    [iView addGestureRecognizer:swipedown];
    
    //创建长按手势
    UILongPressGestureRecognizer* longPress = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(pressLong:)];
    
    [iView addGestureRecognizer:longPress];
    
    //设置长按手势的时间，默认0.5秒的时间为长按手势
    longPress.minimumPressDuration = 1;
    
}

-(void)pressLong:(UILongPressGestureRecognizer*)press
{
    //手势的状态对象，到达规定时间，触发时间
    if(press.state == UIGestureRecognizerStateBegan)
    {
        NSLog(@"开始状态");
    }
    else if(press.state == UIGestureRecognizerStateEnded)
    {
        NSLog(@"状态结束");
    }
    NSLog(@"长按手势");
}

-(void)swipeAct:(UISwipeGestureRecognizer*)swipe
{
    if (swipe.direction == UISwipeGestureRecognizerDirectionUp) {
        NSLog(@"向上滑动");
    }
    else if(swipe.direction == UISwipeGestureRecognizerDirectionDown)
    {
        NSLog(@"向下滑动");
    }
}

//移动事件函数，只要手指坐标在屏幕上发生变化时，函数被调用
-(void)panAct:(UIPanGestureRecognizer*)pan
{
    //获取移动的坐标，相对于视图的坐标系
    //参数：相对的视图对象
    CGPoint pt = [pan translationInView:self.view];
    
    NSLog(@"pt.x= %.2f ,pt.y = %.2f",pt.x,pt.y);
    
    CGPoint pv = [pan velocityInView:self.view];
    
    NSLog(@"pv.x = %2.f,pv.y= %2.f",pv.x,pv.y);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
