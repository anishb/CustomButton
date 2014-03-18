//
//  CustomButton.h
//  MultiButton
//
//  Created by Anish Basu on 3/17/14.
//  Copyright (c) 2014 Anish Basu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomButton : UIControl

@property (nonatomic, strong) UIView *customView;

- (id)initWithCustomView:(UIView *)view;

@end
