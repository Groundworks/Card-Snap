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
    // The offset moves in response to a drag or flick gesture
    CGPoint offset = [sv contentOffset];

    CGFloat width  = sv.bounds.size.width;
    CGFloat height = sv.bounds.size.height;
    
    CGFloat heightOffset = height-offset.y;
    
    // Logistic Function ( http://en.wikipedia.org/wiki/Logistic_function )
    CGFloat scale = 1/(1+exp(-heightOffset/height));
    
    // The card should scale in size
    CGFloat cardWidth  = width * scale;
    CGFloat cardHeight = sv.bounds.size.height/3.0 * scale;
    
    // The card frame is calculated according to top-left corner
    // we need to determine where that should be based on the scale.
    CGFloat cardWidthOffset = (width - cardWidth)/2;
    
    // Redraw the frame
    // Note: this does not scale the card
    CGRect target = CGRectMake(cardWidthOffset, heightOffset, cardWidth, cardHeight);
    [card setFrame:target];
    
}

@end
