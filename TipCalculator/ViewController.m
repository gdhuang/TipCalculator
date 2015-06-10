//
//  ViewController.m
//  TipCalculator
//
//  Created by GD Huang on 6/8/15.
//  Copyright (c) 2015 gdhuang. All rights reserved.
//

#import "ViewController.h"
#import "SettingsViewController.h"


@interface ViewController ()

@end


@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateTipControl];
    [self updateValues];
}

- (void)viewWillAppear:(BOOL)animated {
    //[self updateTipControl];
    //[self updateValues];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
    [self updateValues];
}

- (void) updateTipControl {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int selectedSegmentIndex = [defaults floatForKey:SETTING_PERCENTAGE_KEY];
    [self.tipControl setSelectedSegmentIndex: selectedSegmentIndex];
}

- (void) updateValues {
    NSArray *tipValues = @[@(0.1), @(0.15), @(0.2)];
    float billAmount = [self.billTextField.text floatValue];
    
    float tipAmount = billAmount * [tipValues[self.tipControl.selectedSegmentIndex] floatValue];
    
    float totalAmount = billAmount + tipAmount;
    
    self.tipLabel.text = [NSString stringWithFormat: @"$%0.2f", tipAmount];
    self.totalLabel.text = [NSString stringWithFormat: @"$%0.2f", totalAmount];

}

@end
