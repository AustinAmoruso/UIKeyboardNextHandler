//
//  UIKeyboardNextHandler.m
//  SnapBi
//
//  Created by Austin Amoruso on 3/19/14.
//  Copyright (c) 2014 SnapBi. All rights reserved.
//

#import "UIKeyboardNextHandler.h"

@interface UIKeyboardNextHandler()

@property (strong,atomic) NSMutableArray * pViews;

@end

@implementation UIKeyboardNextHandler

-(id)init
{
    self = [super init];
    if(self)
    {
        self.pViews = [NSMutableArray new];
    }
    return self;
}

-(void)addView:(UIView *)view
{
    [self.pViews addObject:view];
    if([view isKindOfClass:[UITextField class]])
    {
        UITextField * utv = (UITextField *)view;
        [utv setDelegate:self];
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    int index = [self.pViews indexOfObject:textField];
    [textField resignFirstResponder];
    if(index < self.pViews.count)
    {
        @try {
            UIView * temp = [self.pViews objectAtIndex:index+1];
            [temp becomeFirstResponder];
        }
        @catch (NSException *exception) {
        }
    }
    return YES;
}

-(void)removeView:(UIView *)view
{
    [self.pViews removeObject:view];
}



@end
