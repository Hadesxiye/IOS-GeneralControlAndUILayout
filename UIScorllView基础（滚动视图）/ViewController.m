//
//  ViewController.m
//  UIScorllView基础（滚动视图）
//
//  Created by Hades on 2017/11/15.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import "ViewController.h"

#define Screen_W self.view.frame.size.width
#define Screen_H self.view.frame.size.height
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    UIScrollView* sv = [[UIScrollView alloc]init];
    //设置滚动视图的位置，使用矩形来定位视图位置
    sv.frame = CGRectMake(0, 0, Screen_W , Screen_H);
    
    //是否按照整页来滚动视图
    sv.pagingEnabled = YES;
    //是否可以开启滚动效果
    sv.scrollEnabled = YES;
    //设置画布的大小，画布显示在滚动视图内部，一般大于Frame的大小
    sv.contentSize = CGSizeMake(Screen_W *5, Screen_H);
    //是否可以边缘弹动效果
    sv.bounces = YES;
    //开启横向弹动效果
    sv.alwaysBounceHorizontal = YES;
    //开启纵向弹动效果
    sv.alwaysBounceVertical = NO;
    //是否显示横向滚动条
    sv.showsHorizontalScrollIndicator = NO;
    //是否显示纵向滚动条
    sv.showsVerticalScrollIndicator = NO;
    //设置背景颜色
    sv.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:sv];
   
        for(int i =0;i<5;i++)
        {
            NSString* strName = [NSString stringWithFormat:@"%d.jpg",i+1];
            UIImage* image = [UIImage imageNamed:strName];
            UIImageView* iView = [[UIImageView alloc]initWithImage:image];
            iView.frame = CGRectMake(Screen_W *i, 0, Screen_W , Screen_H);
            [sv addSubview:iView];
            
        }

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
