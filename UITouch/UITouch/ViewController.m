//
//  ViewController.m
//  UITouch
//
//  Created by Hades on 2017/11/15.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //加载一张图片到屏幕上
    UIImage* image = [UIImage imageNamed:@"02.jpeg"];
    //创建图像视图
    UIImageView* iView = [[UIImageView alloc]init];
    iView.image = image;
    iView.frame = CGRectMake(50, 100, 220, 300);
    
    iView.tag = 101;
    [self.view addSubview:iView];

}
//点击屏幕开始的瞬间调用此函数
/*一次点击的过程
    1：手指触碰屏幕的瞬间
    2：手机接触到屏幕并且还没离开，于屏幕保持接触，包括按住移动
    3：手指离开屏幕的瞬间
*/
//touchesBegin在1状态下被调用
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //获取点击对象，anyobject获取任何一个点击对象
    //只有一个点击对象，获得的对象就是我们的点击对象
    UITouch* touch = [touches anyObject];
    
    if (touch.tapCount == 1)
    {
        NSLog(@"单次点击");
        
    }
    else if (touch.tapCount == 2)
    {
        NSLog(@"双击");
    }
    _last = [touch locationInView:self.view];
    
    
    NSLog(@"手指触碰瞬间");
}

//手指在屏幕上调用时，并且移动数据可以获取
//在状态2时被调用
-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //获得当前手指在屏幕上的相对坐标
    //相对于当前视图的坐标
    UITouch* touch = [touches anyObject];
    CGPoint pt = [touch locationInView:self.view];
    //设置偏移量
    float xoffset = pt.x - _last.x;
    float yoffset = pt.y - _last.y;
    _last = pt;
    
    UIImageView* iView = (UIImageView*)[self.view viewWithTag:101];
    //添加偏移量
    iView.frame = CGRectMake(iView.frame.origin.x+xoffset, iView.frame.origin.y+yoffset, iView.frame.size.width,iView.frame.size.height );
    
    NSLog(@"x = %f,y = %f",pt.x,pt.y);
    
    NSLog(@"手指按住移动时");
}

//手指离开屏幕时调用
//状态3时调用
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"手指离开屏幕时");
}

//在特殊情况中断屏幕事件时调用
//电话，紧急信息时，取消当前的点击手势作用时调用
//用来做紧急的数据处理保存
-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"紧急情况touch cancel");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
