//
//  ViewController.h
//  步进器和分栏控件
//
//  Created by Hades on 2017/11/13.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //定义步进器对象
    //按照一定的数字来调整摸个数据
    UIStepper* _stepper;
    
    //分栏控制器定义
    UISegmentedControl* _segControl;
    
}

@property (retain,nonatomic) UIStepper* stepper;
@property (retain,nonatomic) UISegmentedControl* segControl;


@end

