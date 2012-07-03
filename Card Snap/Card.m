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
        [[UIActionSheet alloc] initWithTitle:@"Bob Smith" 
                                    delegate:self 
                           cancelButtonTitle:@"Cancel Button" 
                      destructiveButtonTitle:@"Destructive Button" 
                           otherButtonTitles:@"Other Button 1", @"Other Button 2", nil];
        [actionSheet setActionSheetStyle:UIActionSheetStyleBlackOpaque];
        [actionSheet showInView:self.view.superview];

    }
    [super touchesBegan:touches withEvent:event];
}

@end
