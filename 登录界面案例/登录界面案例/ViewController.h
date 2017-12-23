//
//  ViewController.h
//  登录界面案例
//
//  Created by Hades on 2017/11/14.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    /*
     登录界面组成：
        用户名提示：输入框
        密码提示：密码输入框
        登录按钮
        注册按钮
     */
    //用户名提示label
    UILabel* _lbUserName;
    //密码提示label
    UILabel* _lbPassword;
    //用户名输入框
    UITextField* _tfUserName;
    //密码输入框
    UITextField* _tfPassword;
    //登录按钮
    UIButton* _btLogin;
    //注册按钮
    UIButton* _btRegister;
}


@end

