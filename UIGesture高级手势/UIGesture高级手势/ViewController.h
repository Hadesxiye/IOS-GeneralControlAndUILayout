//
//  ViewController.h
//  UIGesture高级手势
//
//  Created by Hades on 2017/11/16.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIGestureRecognizerDelegate>
{
    //定义一个缩放手势，可以对视图进行放大缩小
    //pinch：捏合手势
    UIPinchGestureRecognizer* _pinchGes;
    //定义一个旋转手势，对视图进行旋转
    UIRotationGestureRecognizer* _rotGes;
}


@end

