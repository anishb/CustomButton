//
//  CustomBarButtonItem.h
//  MultiButton
//
//  Created by Anish Basu on 3/17/14.
//  Copyright (c) 2014 Anish Basu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomButton.h"

@interface CustomBarButtonItem : UIBarButtonItem

- (id)initWithCustomView:(UIView *)view	target:(id)target action:(SEL)action;

@end
