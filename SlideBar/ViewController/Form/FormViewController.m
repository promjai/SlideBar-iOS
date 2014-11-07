//
//  FormViewController.m
//  Banana
//
//  Created by Pariwat Promjai on 11/5/2557 BE.
//  Copyright (c) 2557 Pariwat Promjai. All rights reserved.
//

#import "FormViewController.h"
#import "SWRevealViewController.h"

@interface FormViewController ()

@end

@implementation FormViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
