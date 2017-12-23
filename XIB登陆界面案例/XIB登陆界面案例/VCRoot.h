//
//  VCRoot.h
//  XIB登陆界面案例
//
//  Created by Hades on 2017/11/18.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCRoot : UIViewController

//使用XIB创建UILabel控件
//IBOutlet表示这个属性是在XIB中创建的
@property (weak, nonatomic) IBOutlet UILabel *userName;

//XIB 密码属性
@property (weak, nonatomic) IBOutlet UILabel *userPassword;
//输入用户名 属性
@property (weak, nonatomic) IBOutlet UITextField *TFuserName;
//输入密码 属性
@property (weak, nonatomic) IBOutlet UITextField *TFuserPassword;
//登录按钮属性
@property (weak, nonatomic) IBOutlet UIButton *btnLogin;
//注册按钮属性
@property (weak, nonatomic) IBOutlet UIButton *btnRegister;

//按钮函数事件同步
- (IBAction)pressLogin:(UIButton *)sender;
//登录事件函数
- (IBAction)pressRegister:(UIButton *)sender;


@end
