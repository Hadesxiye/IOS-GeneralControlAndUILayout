//
//  ViewController.m
//  UITextField
//
//  Created by Hades on 2017/11/14.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textField = _textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建一个textfield文本输入对象
    self.textField = [[UITextField alloc]init];
    
    //设定文本输入区的位置
    self.textField.frame = CGRectMake(100, 100, 180, 40);
    
    //设置textfield的内容文字
    self.textField.text = @"你爸爸的名字";
    
    //设置文字的字体大小
    self.textField.font = [UIFont systemFontOfSize:15];
    
    //设置字体的颜色
    self.textField.textColor = [UIColor blackColor];
    //设置边框风格
    //UITextBorderStyleRoundedRect：圆角风格
    //UITextBorderStyleLine：线框风格
    //UITextBorderStyleBezel：bezel线框
    //UITextBorderStyleNone：无边框风格
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    
    //设置虚拟键盘风格
    //UIKeyboardTypeDefault：默认风格
    //UIKeyboardTypeNamePhonePad:字母数字组合风格
    //UIKeyboardTypeNumberPad:纯数字风格
    self.textField.keyboardType = UIKeyboardTypeTwitter;
    
    //提示文字信息
    //当text属性为空时，显示此信息
    //浅灰的提示
    self.textField.placeholder = @"输入菊花名*";
    //是否作为密码输入
    //yes作为密码处理，显示圆点
    //no 正常显示
    self.textField.secureTextEntry = NO;
    
    [self.view addSubview:_textField];
    
    //设置代理对象
    self.textField.delegate = self;
    
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"开始编辑了");
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"编辑输入结束");
}

//是否可以进行输入
//返回值为yes 可以进行输入，默认为yes
//NO：禁止输入
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}
//是否可以结束输入
//如果返回值为yes：可以结束输入，默认为yes
//NO：不可以结束输入
-(BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    return YES;
}

//点击屏幕空白处调用此函数
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //使虚拟键盘回收，不再作为第一响应者
    [self.textField resignFirstResponder];
    //设置点击后textfield的text为空
    _textField.text = @"";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
