//
//  WMAppDelegate.h
//  ArcBestPractices
//
//  Created by Steven W. Riggins on 12/13/12.
//  Copyright (c) 2012 WalmartLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WMViewController;

@interface WMAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) WMViewController *viewController;

@end
