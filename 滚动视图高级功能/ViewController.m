//
//  ViewController.m
//  滚动视图高级功能
//
//  Created by Hades on 2017/11/15.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import "ViewController.h"
#define Screen_w self.view.frame.size.width
#define Screen_h self.view.frame.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    self.view.backgroundColor=[UIColor whiteColor];
    
    //创建滚动视图
    _scrollView = [[UIScrollView alloc]init];
    _scrollView.backgroundColor=[UIColor grayColor];
    //设定滚动视图位置
    _scrollView.frame = CGRectMake(0, 0, Screen_w, Screen_h-100);
    
    //弹动效果设置
    _scrollView.bounces = NO;
    
    //是否允许通过点击屏幕让滚动视图响应事件
    //Yes 视图滚动可以接受触碰事件
    //no 不接受触碰事件
    _scrollView.userInteractionEnabled = YES;
    
    //设置按页翻动
    _scrollView.pagingEnabled = YES;
    
    //设置画布大小，纵向效果
    _scrollView.contentSize = CGSizeMake(Screen_w, (Screen_h-100)*8);
    
    for (int i = 1; i<9; i++)
    {
        //生成图片名
         NSString* strName = [NSString stringWithFormat:@"%d.jpg",i+1];
        UIImage* image = [UIImage imageNamed:strName];
        
        //创建图像视图对象
        UIImageView* iView = [[UIImageView alloc]init];
        iView.backgroundColor=[UIColor blueColor];
        //图像赋值
        iView.image = image;
        //设置图像视图在滚动视图画布中的位置
        iView.frame =CGRectMake(0, (Screen_h-100)*(i-1),Screen_w, Screen_h-100);
        
        [_scrollView addSubview:iView];
        
    }
    [self.view addSubview:_scrollView];
    //取消按页滚动效果
    _scrollView.pagingEnabled = YES;
    
    //滚动视图画布的移动位置，偏移位置
    //功能：决定画布显示的最终图像结果
    _scrollView.contentOffset = CGPointMake(0 , 0);
    
    //将当前视图控制器作为代理对象
    _scrollView.delegate = self;
    
    //为了美观设置的label 提示用户点击空白处可以返回
    UILabel* lab = [[UILabel alloc]init];
    lab.frame = CGRectMake(0, Screen_h-100, Screen_w, 100);
    lab.text = @"touch for back";
    lab.font = [UIFont systemFontOfSize:30];
    lab.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:lab];
}
//点击触发
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //瞬间切换
    //_scrollView.contentOffset = CGPointMake(0, 0);
    //动画效果切换
    [_scrollView scrollRectToVisible:CGRectMake(0, 0, Screen_w, Screen_h-100) animated:YES];
}




//当滚动视图移动时，只要offset坐标发生变化，都会调用此函数
//参数： 调用此协议的滚动视图对象
//可以使用此函数来监视滚动视图的位置
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"y = %f",scrollView.contentOffset.y);
}

//当滚动视图结束拖动时调用此函数
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView
{
    NSLog(@"did end 拖动结束了！");
}

//视图即将开始被拖动时调用此函数
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    NSLog(@"will begin 即将开始被拖动");
}

//视图即将结束拖动时调用
-(void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset
{
    NSLog(@"will end 即将结束");
}

//视图即将进行减速动作时调用
-(void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView
{
    NSLog(@"will begin decekerating 即将减速");
}

//视图已经结束减速动作时调用，视图停止的瞬间调用
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSLog(@"视图停止移动");
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
