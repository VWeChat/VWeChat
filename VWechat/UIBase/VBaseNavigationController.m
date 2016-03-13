//
//  VBaseNavigationController.m
//  CU
//
//  Created by zane on 15/2/13.
//  Copyright (c) 2015年 Steven. All rights reserved.
//


//隐藏navigationBar ，可以滑动返回
#import "VBaseNavigationController.h"

@interface VBaseNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation VBaseNavigationController

- (void)dealloc{
    self.interactivePopGestureRecognizer.delegate = nil;
    self.delegate = nil;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.interactivePopGestureRecognizer.delegate = nil;
        self.delegate = self;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Override

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    // Hijack the push method to disable the gesture
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.interactivePopGestureRecognizer.enabled = NO;
    }

    [super pushViewController:viewController animated:animated];
}

#pragma mark - UINavigationControllerDelegate

- (void)navigationController:(UINavigationController *)navigationController
       didShowViewController:(UIViewController *)viewController
                    animated:(BOOL)animate{
    if ([navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        //if ([[navigationController.viewControllers firstObject] isEqual:viewController]) {
        if ([navigationController.viewControllers count] == 1) {
            // Disable the interactive pop gesture in the rootViewController of navigationController
            navigationController.interactivePopGestureRecognizer.enabled = NO;
            
        } else {
            // Enable the interactive pop gesture
            navigationController.interactivePopGestureRecognizer.enabled = YES;
        }
    }
}


@end
