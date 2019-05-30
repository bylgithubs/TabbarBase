//
//  AppDelegate.m
//  TabbarBase
//
//  Created by Civet on 2019/5/23.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    //创建控制器一
    FirstViewController *firstVC = [[FirstViewController alloc] init];
    //创建控制器二
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    //创建控制器三
    ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
    firstVC.title = @"视图1";
    secondVC.title = @"视图2";
    thirdVC.title = @"视图3";
    //firstVC.view操作会先调用FirstViewController的viewDidLoad函数
    firstVC.view.backgroundColor = [UIColor blueColor];
    secondVC.view.backgroundColor = [UIColor yellowColor];
    thirdVC.view.backgroundColor = [UIColor orangeColor];
    //创建分栏控制器对象
    UITabBarController *tabC = [[UITabBarController alloc] init];
    //创建一个控制器数组对象
    //将所有要被分栏控制器管理的对象添加到数组中
    NSArray *arrayVC = [NSArray arrayWithObjects:firstVC,secondVC,thirdVC,nil];
    //将分栏视图控制器管理数组赋值
    tabC.viewControllers = arrayVC;
    //将分栏控制器作为根视图控制器
    self.window.rootViewController = tabC;
    
    //设置选择的视图控制器的索引
    //通过索引来确定显示哪一个控制器
    tabC.selectedIndex = 1;
    //当前选择的控制器对象
    if (tabC.selectedViewController == secondVC){
        NSLog(@"当前显示的是控制器二");
    }
    
    //设置分栏控制器的工具栏的透明度
    tabC.tabBar.translucent = NO;
    
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
