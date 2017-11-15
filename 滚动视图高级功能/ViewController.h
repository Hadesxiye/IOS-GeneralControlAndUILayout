//
//  ViewController.h
//  滚动视图高级功能
//
//  Created by Hades on 2017/11/15.
//  Copyright © 2017年 Hades. All rights reserved.
//

    #import <UIKit/UIKit.h>
    //当前视图控制器要实现UIScrollView的协议函数
    @interface ViewController : UIViewController<UIScrollViewDelegate>
    {
        //定义一个滚动视图成员变量
        UIScrollView* _scrollView;
    }


    @end

