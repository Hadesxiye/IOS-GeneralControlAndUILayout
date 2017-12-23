//
//  ViewController.m
//  警告对话框和等待提示器
//
//  Created by Hades on 2017/11/14.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//实现属性和成员变量的同步
@synthesize alertView = _alertView;
@synthesize activityIndicatorView = _activityIndicator;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    for (int i = 0;i<2;i++)
    {
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(100, 100+100*i, 100, 40);
        
        if (i == 0) {
            [btn setTitle:@"警告对话框" forState:UIControlStateNormal];
        }
        else if(i == 1)
        {
            [btn setTitle:@"提示等待器" forState:UIControlStateNormal];
        }
        
        btn.tag = 101 + i;
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:btn];
    }
}

-(void)pressBtn:(UIButton*)btn
{
    //警告对话框创建
    if (btn.tag == 101)
    {
        /*
         创建警告对话框
         P1：对话框标题
         P2：提示信息
         P3：处理按钮事件的代理对象
         P4：取消按钮的文字
         P5：其他按钮文字
         P6：；。。。；添加其他按钮
         */
        _alertView =[[UIAlertView alloc]initWithTitle:@"警告"
                                              message:@"智商过低，即将死机"
                                             delegate:self
                                    cancelButtonTitle:@"取消"
                                    otherButtonTitles:@"充值",@"自宫"
                                    , nil];
        //显示对话框
        [_alertView show];
    }
    //创建等待提示器
    else if(btn.tag == 102)
    {
        _activityIndicator = [[UIActivityIndicatorView alloc]initWithFrame:CGRectMake(100, 300, 80, 40)];
        //设定提示的风格：灰色gray，白色white，白色large whitelarge
        _activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
        [self.view addSubview:_activityIndicator];
        
        //启动动画并显示
        [_activityIndicator startAnimating];
        
        //停止等待动画并隐藏
        //[_activityIndicator stopAnimating];
    }
        
}

//当点击对话框的按钮时，调用此函数
-(void)alertView:(UIAlertView * )alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"index = %ld\n",buttonIndex);
}
//对话框即将消失，此函数被调用
-(void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"即将消失");
}
-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"已经消失");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}




@end
