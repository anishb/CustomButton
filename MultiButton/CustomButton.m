//
//  CustomButton.m
//  MultiButton
//
//  Created by Anish Basu on 3/17/14.
//  Copyright (c) 2014 Anish Basu. All rights reserved.
//

#import "CustomButton.h"

@implementation CustomButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithCustomView:(UIView *)view
{
    self = [super init];
    if (self) {
        [self addSubview:view];
    }
    return self;
}

- (void)setCustomView:(UIView *)customView
{
    if (_customView == customView) {
        return;
    }
    
    [_customView removeFromSuperview];
    _customView = customView;
    [self addSubview:_customView];
}

- (void)addSubview:(UIView *)view
{
    // Disable interaction for view
    view.userInteractionEnabled = NO;
    self.frame = view.frame;
    [super addSubview:view];
}

#pragma mark - Handle touch events

- (void)setHighlighted:(BOOL) highlighted
{
    [super setHighlighted:highlighted];
    self.alpha = highlighted ? 0.5f : 1.0f;
}

@end
