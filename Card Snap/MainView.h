//
//  MainView.h
//  Card Snap
//
//  Created by jacob on 12-07-02.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "Card.h"

@interface MainView : UIViewController <UIScrollViewDelegate>
{
    IBOutlet UIScrollView *scrollView;
    
    NSMutableArray *cards;
    int ncards;
    
    CGFloat cardWidth;
    CGFloat cardHeight;
}

@end
