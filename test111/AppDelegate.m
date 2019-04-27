//
//  AppDelegate.m
//  test111
//
//  Created by panwg on 2019/4/17.
//  Copyright © 2019 WG. All rights reserved.
//

#import "AppDelegate.h"
#import <RTRootNavigationController/RTRootNavigationController.h>
#import <CYLTabBarController/CYLTabBarController.h>


#import "FirstPageViewController.h"
#import "UserCenterViewController.h"
#import "MessageViewController.h"
#import "ChannelViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 1.创建一个window对象
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    // 2.设置window的根控制器为TabBarController
    [self settingRootViewControllerAndTabBarVC];
    // 3.显示窗口
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

#pragma mark - set-TabVC-RTNav
- (void)settingRootViewControllerAndTabBarVC{
    
    //  可能需要新特性页面
    // 设置导航栏和底部导航栏
    
    FirstPageViewController *firstViewController = [[FirstPageViewController alloc] init];
    RTRootNavigationController *firstNavigationController = [[RTRootNavigationController alloc]
                                                   initWithRootViewController:firstViewController];

    UserCenterViewController *secondViewController = [[UserCenterViewController alloc] init];
    RTRootNavigationController *secondNavigationController = [[RTRootNavigationController alloc]
                                                    initWithRootViewController:secondViewController];
    
    
    MessageViewController *messageViewController = [[MessageViewController alloc] init];
    RTRootNavigationController *messageNavigationController = [[RTRootNavigationController alloc]
                                                              initWithRootViewController:messageViewController];
    
    
    
    ChannelViewController *channelViewController = [[ChannelViewController alloc] init];
    RTRootNavigationController *channelNavigationController = [[RTRootNavigationController alloc]
                                                              initWithRootViewController:channelViewController];
    


    CYLTabBarController *tabBarController = [[CYLTabBarController alloc] init];
    
    // tabbarVC设置样式
    [self customizeTabBarForController:tabBarController];
    
    [tabBarController setViewControllers:@[
                                           firstNavigationController,channelNavigationController,messageNavigationController,
                                           secondNavigationController]];
 
    tabBarController.hidesBottomBarWhenPushed = YES;
     self.window.rootViewController =  tabBarController;
}
/*
 *
 在`-setViewControllers:`之前设置TabBar的属性，
 *
 */
- (void)customizeTabBarForController:(CYLTabBarController *)tabBarController {
    
    NSDictionary *dict1 = @{
                            CYLTabBarItemTitle : @"首页",
                            CYLTabBarItemImage : @"add_user_male",
                            CYLTabBarItemSelectedImage : @"add_user_male",
                            };
    NSDictionary *dict2 = @{
                            CYLTabBarItemTitle : @"频道",
                            CYLTabBarItemImage : @"add_user_male",
                            CYLTabBarItemSelectedImage : @"add_user_male",
                            };
    NSDictionary *dict3 = @{
                            CYLTabBarItemTitle : @"消息",
                            CYLTabBarItemImage : @"about",
                            CYLTabBarItemSelectedImage : @"about",
                            };
    NSDictionary *dict4 = @{
                            CYLTabBarItemTitle : @"我的",
                            CYLTabBarItemImage : @"about",
                            CYLTabBarItemSelectedImage : @"about",
                            };
    
    NSArray *tabBarItemsAttributes = @[ dict1, dict2,dict3,dict4 ];
    tabBarController.tabBarItemsAttributes = tabBarItemsAttributes;
}
@end
