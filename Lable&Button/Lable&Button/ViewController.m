//
//  ViewController.m
//  Lable&Button
//
//  Created by Hades on 2017/11/10.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)createUI
{
    //创建一个UIlabel对象
    UILabel* label = [[UILabel alloc] init];
    //文字
    label.text = @"hello world";
    //位置
    label.frame = CGRectMake(20, 20, 100, 100);
    //background clearColor透明
    label.backgroundColor = [UIColor whiteColor];
    //设置文字大小
    label.font = [UIFont systemFontOfSize:12];
    //字体颜色
    label.textColor = [UIColor blueColor];
    //高级属性
    //设置阴影颜色
    label.shadowColor = [UIColor grayColor];
    //设置阴影偏移量
    label.shadowOffset = CGSizeMake(4, 4);
    //设置文字对齐模式 NSTextAlignmentLeft NSTextAlignmentrightright/center;
    label.textAlignment = NSTextAlignmentLeft;
    //设定label文字显示行数，默认为1，设置0为自动换行。
    label.numberOfLines = 0;
    
    [self.view addSubview:label];
    
}

-(void)createUIRectButton
{
    /*创建btn对象
     圆角类型btn：UIButtonTypeRoundedRect
     通过类方法来创建buttonWithType：类名+方法名
     */
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    //设置button按钮的位置
    btn.frame = CGRectMake(100,100,150,100);
    
    /*
     设置按钮的文字内容
     @parameter
     P1:字符串类型，显示到按钮上的文字
     P2：显示文字的状态类型：UIControlStateHighlighted,按下状态
     */
    [btn setTitle:@"按钮=。=" forState:UIControlStateNormal];
    /*
     P1:显示文字
     P2：显示文字的状态：UIControlStateHighlighted，按下状态
     */
    [btn setTitle:@"按钮按下=w=" forState:UIControlStateHighlighted];
    
    
    //background
    btn.backgroundColor = [UIColor grayColor];
    //文字颜色 按钮状态
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    //文字颜色 按钮状态
    [btn setTitleColor:[UIColor orangeColor]forState:UIControlStateHighlighted];
    //设置按钮的风格颜色
    [btn setTintColor:[UIColor whiteColor]];
    //titleLabel:UILabel空间
    btn.titleLabel.font = [UIFont systemFontOfSize:20];
    
    //添加btn到视图
    [self.view addSubview:btn];
}
//自定义button可显示图片
-(void)createImageBtn
{
    //创建对象 btnImage
    UIButton* btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    btnImage.frame = CGRectMake(200, 200, 200, 200);
    /*
     默认是png格式
     P1：显示图片的对象
     P2：文件名字
     */
    UIImage* icon01 = [UIImage imageNamed:@"01.jpeg"];
    UIImage* icon02 = [UIImage imageNamed:@"02.jpeg"];
    [btnImage setImage:icon01 forState:UIControlStateNormal];
    [btnImage setImage:icon02 forState:UIControlStateHighlighted];
    [self.view addSubview:btnImage];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createUI];
    [self createUIRectButton];
    [self createImageBtn];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
