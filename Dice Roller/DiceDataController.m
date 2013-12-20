//
//  DiceDataController.m
//  Dice Roller
//
//  Created by Muhammad Farhan Hossain on 12/16/2013.
//  Copyright (c) 2013 Apps Factory. All rights reserved.
//

#import "DiceDataController.h"

@implementation DiceDataController

- (int)getDiceNumber
{
    int r = (arc4random() % 6) + 1;
    return r; 
}

-(int)getDiceNumberTwenty
{
    int t = (arc4random() % 20) + 1;
    return t;
}

@end
