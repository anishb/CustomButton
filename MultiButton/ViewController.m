//
//  ViewController.m
//  MultiButton
//
//  Created by Anish Basu on 3/17/14.
//  Copyright (c) 2014 Anish Basu. All rights reserved.
//

#import "ViewController.h"
#import "CustomButton.h"
#import "CustomBarButtonItem.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"iPhone_header_back_arrow"]
//                                                                  style:UIBarButtonItemStylePlain
//                                                                 target:self
//                                                                 action:@selector(backPressed:)];
//    UIBarButtonItem *logoButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"iPhone_header_cbseye"]
//                                                                   style:UIBarButtonItemStylePlain
//                                                                  target:self
//                                                                  action:@selector(backPressed:)];
//    self.navigationItem.leftBarButtonItems = [NSArray arrayWithObjects:backButton, logoButton, nil];
   
   
//    CustomButton *customButton = [[CustomButton alloc] initWithCustomView:[self _customView]];
//    [customButton addTarget:self action:@selector(backPressed:) forControlEvents:UIControlEventTouchUpInside];
//    
//    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithCustomView:customButton];
    CustomBarButtonItem *backButton = [[CustomBarButtonItem alloc] initWithCustomView:[self _customView]
																			   target:self
																			   action:@selector(backPressed:)];
	self.navigationItem.leftBarButtonItem = backButton;
                                  
}

- (IBAction)backPressed:(id)sender
{
    NSLog(@"Back pressed");
}

- (UIButton *)_buttonView
{
    UIButton *buttonView = [UIButton buttonWithType:UIButtonTypeCustom];
    UIView *customView = [self _customView];
    buttonView.frame = customView.frame;
    [buttonView addSubview:customView];
    [buttonView addTarget:self
                   action:@selector(backPressed:)
         forControlEvents:UIControlEventTouchUpInside];
    
    return buttonView;
}

- (UIView *)_customView
{
    UIView *customView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 45, 20)];
    
    UIImageView *backImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"iPhone_header_back_arrow"]];
    backImageView.frame = CGRectMake(0, 3, 8, 14);
    [customView addSubview:backImageView];
    
    UIImageView  *logoImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"iPhone_header_cbseye"]];
    logoImageView.frame = CGRectMake(14, 0, 20, 20);
    [customView addSubview:logoImageView];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(38, 0, 17, 20)];
    label.text = @"foo";
    label.textAlignment = NSTextAlignmentLeft;
    [customView addSubview:label];
    
    return customView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
