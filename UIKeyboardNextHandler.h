//
//  UIKeyboardNextHandler.h
//  SnapBi
//
//  Created by Austin Amoruso on 3/19/14.
//  Copyright (c) 2014 SnapBi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIKeyboardNextHandler : NSObject <UITextFieldDelegate>

-(void)addView:(UIView *)view;

-(void)removeView:(UIView *)view;

@end
