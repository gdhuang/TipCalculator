//
//  SettingsViewController.h
//  TipCalculator
//
//  Created by GD Huang on 6/9/15.
//  Copyright (c) 2015 gdhuang. All rights reserved.
//

#import <UIKit/UIKit.h>


extern NSString *SETTING_PERCENTAGE_KEY;
@interface SettingsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;


- (IBAction)updateDefaultTipPercentage:(id)sender;

@end
