//
//  WMViewController.m
//  ArcBestPracticies
//
//  Created by Steven W. Riggins on 12/13/12.
//  Copyright (c) 2012 WalmartLabs. All rights reserved.
//

#import "WMViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface WMViewController ()

@end

@implementation WMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testAutoReleasingAction:(id)sender
{
	[self testAutoReleasing];
}

- (void)testAutoReleasing
{
	CGColorRef redRef = [UIColor colorWithRed:0.85 green:0.85 blue:0.35 alpha:0.5].CGColor;
	
	[[self.view layer] setBackgroundColor: redRef];
	
}

@end
