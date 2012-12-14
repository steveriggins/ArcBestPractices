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

- (IBAction)ABPEarlyReleaseExampleAction:(id)sender
{
	[self ABPEarlyReleaseExample];
}

/*
	This example exhibits an issue when run on a device in which ARC releases
	the UIColor at the end of the expression that assigns the CGColorRef.
 
	This results in redRef pointing into a now released UIColor object, and when later used, crashes.
 
	You must have compiler settings set to fastest and run on a device to trigger this crash
*/

- (void)ABPEarlyReleaseExample
{
#if 1
	// Problematic code
	CGColorRef redRef = [UIColor colorWithRed:0.85 green:0.85 blue:0.35 alpha:0.5].CGColor;
	
	[[self.view layer] setBackgroundColor: redRef];

#else 
	// Working code
	UIColor *color = [UIColor colorWithRed:0.85 green:0.85 blue:0.35 alpha:0.5];
	
	[[self.view layer] setBackgroundColor: color.CGColor];

#endif
	
	
}

@end
