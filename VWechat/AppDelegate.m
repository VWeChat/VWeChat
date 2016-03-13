//
//  AppDelegate.m
//  VWechat
//
//  Created by Vicky on 16/3/5.
//  Copyright © 2016年 Jobs. All rights reserved.
//

#import "AppDelegate.h"
#import "VChatListViewController.h"
#import "VContactViewController.h"
#import "VDiscoverViewController.h"
#import "VMeViewController.h"
#import "VUIColor.h"

@interface AppDelegate ()

@end

static const NSInteger KTabbarChatListTag = 101;
static const NSInteger KTabbarContactTag = 102;
static const NSInteger KTabbarDiscoverTag = 103;
static const NSInteger KTabbarMeTag = 104;

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    // 设置tabbar navBar 的属性以及颜色
    [[UINavigationBar appearance] setBarTintColor:UIColorFromRGB(0xff4a92)];
    [[UINavigationBar appearance] setTitleTextAttributes:@{
                                                           NSForegroundColorAttributeName:UIColorFromRGB(0xff4a92)}];
    [[UINavigationBar appearance] setShadowImage:nil];

    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:UIColorFromRGB(0x888888)} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:UIColorFromRGB(0xff4a92)} forState:UIControlStateSelected];
    [[UITabBar appearance] setTintColor:UIColorFromRGB(0xff4a92)];

    

    
    
    
    [self initMainNavViewController];
    
    return YES;
}

- (void)initMainNavViewController{
    VChatListViewController *chatListController =[[VChatListViewController alloc] init];
    UITabBarItem *chatItem = [[UITabBarItem alloc] initWithTitle:@"Chat" image:nil tag:KTabbarChatListTag];
    [chatListController setTabBarItem:chatItem];
    
    VContactViewController *contactController = [[VContactViewController alloc] init];
    UITabBarItem *contactItem = [[UITabBarItem alloc] initWithTitle:@"Contact" image:nil tag:KTabbarContactTag];
    [contactController setTabBarItem:contactItem];
    
    VDiscoverViewController *discoverController = [[VDiscoverViewController alloc] init];
    UITabBarItem *discoverItem = [[UITabBarItem alloc] initWithTitle:@"Discover" image:nil tag:KTabbarDiscoverTag];
    [discoverController setTabBarItem:discoverItem];
    
    VMeViewController *meViewController = [[VMeViewController alloc] init];
    UITabBarItem *meItem = [[UITabBarItem alloc] initWithTitle:@"Me" image:nil tag:KTabbarMeTag];
    [meViewController setTabBarItem:meItem];
    
    UITabBarController *tabBarViewController = [[UITabBarController alloc] init];
    tabBarViewController.viewControllers = @[chatListController,contactController,discoverController, meViewController];
    self.mainNavController = [[VBaseNavigationController alloc] initWithRootViewController:tabBarViewController];
    
    self.window.rootViewController =  _mainNavController;

}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
