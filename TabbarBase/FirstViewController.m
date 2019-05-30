//
//  FirstViewController.m
//  TabbarBase
//
//  Created by Civet on 2019/5/23.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建一个分栏按钮对象
    //参数1:文字
    //P2:显示图片图标
    //P3:设置按钮的tag
    //方法一
//    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:@"选择视图1" image:nil tag:101];
//    self.tabBarItem = tabBarItem;
    //根据系统风格创建分栏按钮
    //P1:系统风格设定
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:101];
    //按钮右上角提示信息
    //通常用来提示未读的信息
    tabBarItem.badgeValue = @"11";
    self.tabBarItem = tabBarItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
