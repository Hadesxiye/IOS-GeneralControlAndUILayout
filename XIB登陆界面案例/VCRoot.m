//
//  VCRoot.m
//  XIB登陆界面案例
//
//  Created by Hades on 2017/11/18.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)pressLogin:(UIButton *)sender {
    
    NSString* uName = @"jilao";
    NSString* uPass = @"123456";
    //对输入的用户名和密码做出判断，并弹出提示对话框
    if([_TFuserName.text isEqual:uName]&&[_TFuserPassword.text isEqual:uPass])
    {
        UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"提示" message:@"你是真正的基佬" delegate:nil cancelButtonTitle:@"嘿咻" otherButtonTitles:@"嗨啾", nil];
        [alert show];
    }
    else{
        UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"提示！" message:@"你不是真正的~基佬~" delegate:nil cancelButtonTitle:@"哈？" otherButtonTitles:@"五月天的？", nil];
        [alert show];
    }
}

//点击屏幕空白处收回键盘
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [_TFuserName resignFirstResponder];
    [_TFuserPassword resignFirstResponder];
}

- (IBAction)pressRegister:(UIButton *)sender {
    UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"注册？" message:@"把你的菊花露出来啊？！" delegate:nil cancelButtonTitle:@"？？" otherButtonTitles:@"我已经脱裤子了", nil];
    [alert show];
}
@end
