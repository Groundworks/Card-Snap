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
    
    [scrollView setContentSize:CGSizeMake(width, height*2)];
}

- (void)scrollViewDidScroll:(UIScrollView *)sv
{
    CGFloat width  = self.view.bounds.size.width;
    CGFloat height = self.view.bounds.size.height;
    
    CGPoint offset = [sv contentOffset];
    CGPoint target = CGPointMake(width/2.0, sv.contentSize.height - offset.y - height/2.0);
    
    [card setCenter:target];
    
}

@end
