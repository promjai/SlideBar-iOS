//
//  ViewController.m
//  Banana
//
//  Created by Pariwat Promjai on 11/5/2557 BE.
//  Copyright (c) 2557 Pariwat Promjai. All rights reserved.
//

#import "ViewController.h"
#import "SWRevealViewController.h"
#import "UIViewController+ScrollingNavbar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    // Let's fake some content
    [self.scrollView setContentSize:CGSizeMake(320, 840)];
    
    [self.navigationController.navigationBar setTranslucent:NO];
    
    // Set the barTintColor (if available). This will determine the overlay that fades in and out upon scrolling.
    if ([self.navigationController.navigationBar respondsToSelector:@selector(setBarTintColor:)]) {
        [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]];
    }
    
    // Just call this line to enable the scrolling navbar
    [self followScrollView:self.scrollView withDelay:60];
    
    [self.scrollView setDelegate:self];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    [self showNavBarAnimated:NO];
}

- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView
{
    // This enables the user to scroll down the navbar by tapping the status bar.
    [self showNavbar];
    
    return YES;
}

@end
