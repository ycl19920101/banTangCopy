//
//  AppDelegate.m
//  banTangCopy
//
//  Created by 苏俊良 on 16/3/28.
//  Copyright © 2016年 LarrySue. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (nonatomic, strong) UITabBarController *tabBarVc;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    测试代码
//    BTCLog(@"%@",BTCMacroDemo);
    //创建window
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    //创建tableBarViewController
    self.tabBarVc = [[UITabBarController alloc] init];
//    设置代理
//    self.tabBarVc.delegate = self;
    
    //设置tabBarVc为window的根控制器
    self.window.rootViewController = self.tabBarVc;
    
    for (int i = 0; i < 5; ++i) {
        //创建子控制器
        UIViewController *vc = [[UIViewController alloc] init];
        vc.view.backgroundColor = BTCColorRandom;
        //包装于导航控制器内
        UINavigationController *navVc = [[UINavigationController alloc] initWithRootViewController:vc];
        //添加至tabBar控制器
        [self.tabBarVc addChildViewController:navVc];

    }
    
    //设置window为主窗口
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
