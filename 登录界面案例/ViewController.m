//
//  ViewController.m
//  登录界面案例
//
//  Created by Hades on 2017/11/14.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import "ViewController.h"

    @interface ViewController ()

    @end

    @implementation ViewController

    - (void)viewDidLoad {
        [super viewDidLoad];
        // Do any additional setup after loading the view, typically from a nib.
        
        //用户名提示
        _lbUserName = [[UILabel alloc]init];
        _lbUserName.frame = CGRectMake(20, 60, 80, 40);
        _lbUserName.text = @"基佬名：";
        _lbUserName.font = [UIFont systemFontOfSize:15];
        _lbUserName.textAlignment = NSTextAlignmentLeft;
        //密码提示
        _lbPassword = [[UILabel alloc]init];
        _lbPassword.frame = CGRectMake(20, 140, 80, 40);
        _lbPassword.text = @"菊花密码：";
        _lbPassword.font = [UIFont systemFontOfSize:15];
        _lbPassword.textAlignment = NSTextAlignmentLeft;
        //用户名输入框
        _tfUserName = [[UITextField alloc]init];
        _tfUserName.frame = CGRectMake(120, 60, 200, 40);
        _tfUserName.placeholder = @"快说你的名字！基佬！";
        _tfUserName.borderStyle = UITextBorderStyleRoundedRect;
        //密码输入框
        _tfPassword = [[UITextField alloc]init];
        _tfPassword.frame = CGRectMake(120, 140, 200, 40);
        _tfPassword.placeholder = @"菊花凑过来输密码";
        _tfPassword.borderStyle = UITextBorderStyleRoundedRect;
        _tfPassword.secureTextEntry = YES;
        //登录和注册按钮的创建
        _btLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _btLogin.frame = CGRectMake(100, 190, 80, 40);
        [_btLogin setTitle:@"啊？登录" forState:UIControlStateNormal];
        [_btLogin addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
        
        _btRegister = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _btRegister.frame = CGRectMake(200, 190, 80, 40);
        [_btRegister setTitle:@"啊！注册" forState:UIControlStateNormal];
        [_btRegister addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:_lbUserName];
        [self.view addSubview:_lbPassword];
        [self.view addSubview:_tfUserName];
        [self.view addSubview:_tfPassword];
        [self.view addSubview:_btLogin];
        [self.view addSubview:_btRegister];

    }

    -(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
    {
        //回收键盘
        [_tfPassword resignFirstResponder];
        [_tfUserName resignFirstResponder];
    }


    //登录事件函数
    -(void)pressLogin
    {
        NSString* name = @"jilao";
        NSString* password = @"123";
        //获取输入框中的用户名
        NSString* TextName = _tfUserName.text;
        NSString* TextPass = _tfPassword.text;
        
        if([name isEqualToString:TextName]&&[password isEqualToString:TextPass])
        {
            NSLog(@"你！是个基佬！");
            UIAlertView* alView = ([[UIAlertView alloc]initWithTitle:@"提示" message:@"验证成功" delegate:nil cancelButtonTitle:@"rua!" otherButtonTitles: nil]);
            [alView show];
        }
        else
        {
            UIAlertView* alView = [[UIAlertView alloc]initWithTitle:@"提示" message:@"验证失败，你不是真的基佬！" delegate:nil cancelButtonTitle:@"ea！" otherButtonTitles: nil];
            [alView show];
        }
        
    }
    //注册事件函数
    -(void)pressRegister
    {
        NSLog(@"自己开发啊！！！");
    }


    - (void)didReceiveMemoryWarning {
        [super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
    }


    @end
