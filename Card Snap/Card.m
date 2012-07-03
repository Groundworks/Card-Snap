//
//  Card.m
//  Card Snap
//
//  Created by jacob on 12-07-02.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Card.h"

@implementation Card

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (event.type==UIEventTypeTouches){
        NSLog(@"Touched");
        
        UIActionSheet *actionSheet = 
        [[UIActionSheet alloc] initWithTitle:nil
                                    delegate:self 
                           cancelButtonTitle:@"Cancel"
                      destructiveButtonTitle:nil
                           otherButtonTitles:@"Phone",@"Email",@"SMS",nil];
        [actionSheet setActionSheetStyle:UIActionSheetStyleBlackOpaque];
        [actionSheet showInView:self.view.superview];
        
        UIScrollView *scrollView = (UIScrollView* )self.view.superview;
        [scrollView setContentOffset:CGPointMake(0.0, self.view.center.y - scrollView.window.bounds.size.height/2.0) animated:YES];

    }
    [super touchesBegan:touches withEvent:event];
}

@end
