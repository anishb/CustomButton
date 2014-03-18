//
//  CustomBarButtonItem.m
//  MultiButton
//
//  Created by Anish Basu on 3/17/14.
//  Copyright (c) 2014 Anish Basu. All rights reserved.
//

#import "CustomBarButtonItem.h"

@implementation CustomBarButtonItem

- (id)initWithCustomView:(UIView *)view target:(id)target action:(SEL)action
{
	self = [super init];
	if (self) {
		CustomButton *button = [[CustomButton alloc] initWithCustomView:view];
		[button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
		self.customView = button;
	}
	return self;
}


@end
