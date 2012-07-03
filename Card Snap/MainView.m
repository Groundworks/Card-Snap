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
    
    cards = [[NSMutableArray alloc]init];
    for(int i=0; i<10; i++)
    {
        Card *cardView = [[Card alloc]initWithNibName:nil bundle:nil];
        
        cardHeight = cardView.view.bounds.size.height;
        cardWidth  = cardView.view.bounds.size.width;
        
        [cardView.view setFrame:CGRectMake(0.0, 
                                       self.view.bounds.size.height/2.0+
                                       cardHeight/2.0, 
                                       cardWidth,
                                       cardHeight)];
        [cards addObject:cardView];
        [scrollView addSubview:cardView.view];

    }
    
}

- (void)scrollViewDidScroll:(UIScrollView *)sv
{
    // The offset moves in response to a drag or flick gesture
    CGPoint offset = [sv contentOffset];
    
    CGFloat height = sv.bounds.size.height;
    CGFloat center = height/2.0;
    CGFloat cdiff  = abs(center-offset.y);
    
    // Use trigonometric functions to scale card views
    CGFloat pdiff  = 1-(height-cdiff)/height;
    CGFloat pacing = 0.88;
    CGFloat scale  = cos(pacing*pdiff*M_PI);
    
    // Core Animation - Affine Transformation
    CATransform3D resize = CATransform3DMakeScale(scale, scale, scale);
    
    int ncards = [cards count];
    for(int i=0; i<ncards; i++)
    {
        UIViewController  *cardView  = [cards objectAtIndex:i];
        CALayer *cardLayer = cardView.view.layer;
        
        [cardLayer setTransform:resize];
    }

}

@end
