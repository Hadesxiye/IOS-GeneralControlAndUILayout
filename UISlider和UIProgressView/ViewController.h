//
//  ViewController.h
//  UISlider和UIProgressView
//
//  Created by Hades on 2017/11/13.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //进度条对象
    //一般用来表示下载或者视频播放的进度
    UIProgressView* _progressView;
    //滑动条对象
    //一般用来进行调整音乐的音量等
    UISlider* _slider;
}

@property (retain,nonatomic)UIProgressView* pView;

@property(retain,nonatomic)UISlider* slider;


@end

