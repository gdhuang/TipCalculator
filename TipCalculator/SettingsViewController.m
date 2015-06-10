//
//  SettingsViewController.m
//  TipCalculator
//
//  Created by GD Huang on 6/9/15.
//  Copyright (c) 2015 gdhuang. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end



@implementation SettingsViewController

NSString *SETTING_PERCENTAGE_KEY = @"defaultTipPercentage";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int selectedSegmentIndex = [defaults floatForKey:SETTING_PERCENTAGE_KEY];
    [self.tipControl setSelectedSegmentIndex: selectedSegmentIndex];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)updateDefaultTipPercentage:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger: self.tipControl.selectedSegmentIndex forKey:SETTING_PERCENTAGE_KEY];
    [defaults synchronize];
}



@end
