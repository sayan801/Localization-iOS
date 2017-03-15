//
//  ViewController.m
//  LocalizeTEST
//
//  Created by Abhik Das on 15/03/17.
//  Copyright © 2017 Abhik Das. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _salesCountLabel.text =NSLocalizedString(@"Welcome to technicise", nil);
    //NSLocalizedString(@"Welcome to technicise");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
