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

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGFloat  width = self.view.bounds.size.width;
    CGFloat center = width/2.0;

    for(UITouch *touch in touches)
    {
        CGPoint  touchPoint = [touch locationInView:[self view]];
        CGPoint targetPoint = CGPointMake(center, touchPoint.y);
        
        [cardView setCenter:targetPoint];
    }
}

@end
