//
//  DiceView.h
//  Dice Roller
//
//  Created by Muhammad Farhan Hossain on 12/16/2013.
//  Copyright (c) 2013 Apps Factory. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DiceView : UIView

#pragma mark - Properties

@property (strong, nonatomic) UIImageView *dieImageView;

- (void)showDieNumber : (int)num;

@end
