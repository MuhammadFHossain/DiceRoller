//
//  DiceRollerViewController.h
//  Dice Roller
//
//  Created by Muhammad Farhan Hossain on 12/16/2013.
//  Copyright (c) 2013 Apps Factory. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DiceView.h"

@interface DiceRollerViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *Label;
@property (strong, nonatomic) IBOutlet UIButton *RollButton;
@property (strong, nonatomic) IBOutlet DiceView *firstDiceView;
@property (strong, nonatomic) IBOutlet DiceView *secondDiceView;
@property (strong, nonatomic) IBOutlet UILabel *doubles;
@property (strong, nonatomic) IBOutlet UIView *twentySided;
@property (strong, nonatomic) IBOutlet UILabel *twentyLabel;

@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, assign) NSInteger count;

- (IBAction)changeDice:(UISegmentedControl *)segmentedControl;

@end
