//
//  AppDelegate.m
//  XIB使用介绍
//
//  Created by Hades on 2017/11/17.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import "AppDelegate.h"
#import "VCRoot.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //创建一个窗口对象
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    //创建根视图控制器对象
    //参数1：创建时加载的XIB资源文件名，加载XIB作为视图控制器视图
    //参数2：是指主文件包，XIB所在的位置
    //mainBundle是主资源文件包
    //如果传nil，函数会自动到mainBundle中查找
    //显示加载XIB资源文件
    //VCRoot* root = [[VCRoot alloc]initWithNibName:@"VCRoot" bundle:nil];
    
    
    //方法二：
    //如果系统中会有XIB的名字跟类名VCRoot相同
    //init函数会自动取加载VCRoot.xib文件
    //隐式加载XIB文件
    VCRoot* root = [[VCRoot alloc]init];
    //根视图控制器赋值
    self.window.rootViewController = root;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
