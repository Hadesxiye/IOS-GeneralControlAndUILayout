//
//  ViewController.m
//  UISlider和UIProgressView
//
//  Created by Hades on 2017/11/13.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize slider = _slider;
@synthesize pView = _progressView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //进度条的创建
    _progressView = [[UIProgressView alloc]init];
    
    //进度条的位置大小设置
    //进度条的高度是不可以变化的
    _progressView.frame = CGRectMake(30, 100, 300, 40);
    
    //设置进度条的风格颜色值 默认是蓝色的
    _progressView.progressTintColor = [UIColor redColor];
    //进度条另一半颜色
    _progressView.trackTintColor = [UIColor blueColor];
    
    //设置进度条的进度值
    //范围从0-1
    //最小值为0 最大为1
    //数值相当于百分值
    _progressView.progress = 0.5;
    
    _progressView.progressViewStyle = UIProgressViewStyleBar;
    
    [self.view addSubview:_progressView];
    
    //创建滑动条
    _slider = [[UISlider alloc]init];
    
    //设置位置，高度不可变
    _slider.frame = CGRectMake(30, 200, 300, 40);
    
    //设置滑动条的最大值
    _slider.maximumValue = 100;
    
    //设置滑动条的最小值，可以为负值
    _slider.minimumValue = 0;
    
    //设置滑动条的滑块位置float值
    _slider.value = 30;
    
    //左侧滑条背景色min
    _slider.minimumTrackTintColor = [UIColor blueColor];
    
    //右侧滑条背景色max
    _slider.maximumTrackTintColor = [UIColor redColor];
    
    //滑块颜色
    _slider.thumbTintColor = [UIColor orangeColor];
    
    //对滑动条添加事件函数
    [_slider addTarget:self action:@selector(pressSlider) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_slider];
}

-(void)pressSlider
{
    _progressView.progress = (_slider.value-_slider.minimumValue)/(_slider.maximumValue-_slider.minimumValue);
    NSLog(@"value = %f",_slider.value);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
