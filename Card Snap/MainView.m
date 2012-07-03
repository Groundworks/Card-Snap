//
//  MainView.m
//  Card Snap
//
//  Created by jacob on 12-07-02.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainView.h"

@implementation MainView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    CGFloat  width = self.view.bounds.size.width;
    CGFloat height = self.view.bounds.size.height;
    
    [scrollView setContentSize:CGSizeMake(width, height*10)];
}

@end
