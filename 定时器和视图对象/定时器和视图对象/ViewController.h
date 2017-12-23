//
//  ViewController.h
//  定时器和视图对象
//
//  Created by Hades on 2017/11/11.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    /*
     定义一个定时器对象
     可以通过每隔固定时间发送一个消息
     可以通过此消息来调用相应的时间函数
     通过此函数可以在固定时间段来完成一个根据时间间隔的任务
     */
    NSTimer* _timerView;
    
}

//定时器的属性对象
@property (retain,nonatomic)NSTimer* timerView;


@end

