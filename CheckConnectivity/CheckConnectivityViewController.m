//
//  CheckConnectivityViewController.m
//  CheckConnectivity
//
//  Created by Osman Çelik on 12/14/11.
//  Copyright (c) 2011 Inaras. All rights reserved.
//

#import "CheckConnectivityViewController.h"

@implementation CheckConnectivityViewController
@synthesize labelConnectionStatus;
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    if ([ConnectivityHelper hasConnectivity]) {
        [labelConnectionStatus setText:@"Internete bağlısınız!"];
    }else{
        UIAlertView *alert;
        alert = [[UIAlertView alloc] init];
        [alert setTitle:@"Internet"];
        [alert setMessage:@"Internete bağlı değilsiniz!"];
        [alert setDelegate:self];
        [alert addButtonWithTitle:@"Tamam"];
        [alert show];
        [alert release];
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
