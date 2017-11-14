
//
//  ViewController.h
//  UITextField
//
//  Created by Hades on 2017/11/14.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    /*
     定义一个textField
     文本输入区域
     例如，用户名，密码等需要输入文本文字的内容区域
     只能输入单行文字，不能输入或者显示多行
     */
    UITextField* _textField;
}
//定义属性
@property (retain,nonatomic)UITextField* textField;

@end

