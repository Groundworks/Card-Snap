//
//  AppDelegate.h
//  Card Snap
//
//  Created by jacob on 12-07-02.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainView.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    MainView *mainView;
}

@property (strong, nonatomic) UIWindow *window;

@end
