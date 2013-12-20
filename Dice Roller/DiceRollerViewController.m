//
//  DiceRollerViewController.m
//  Dice Roller
//
//  Created by Muhammad Farhan Hossain on 12/16/2013.
//  Copyright (c) 2013 Apps Factory. All rights reserved.
//

#import "DiceRollerViewController.h"
#import "DiceDataController.h"

@interface DiceRollerViewController ()

@end

@implementation DiceRollerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.twentySided.hidden = YES;
    self.twentyLabel.hidden = YES;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)rollClicked:(id)sender {
    
    self.count = 0;
    self.doubles.text = @"";
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(roll:) userInfo:nil repeats:YES];
}

- (void) roll:(NSTimer *)timer {
    
    if (self.count > 10) {
        [timer invalidate];
        DiceDataController *diceController = [[DiceDataController alloc] init];
        
        int firstNumber = [diceController getDiceNumber];
        int secondNumber = [diceController getDiceNumber];
        [self.firstDiceView showDieNumber:firstNumber];
        [self.secondDiceView showDieNumber:secondNumber];
         self.Label.text = [NSString stringWithFormat:@"Total: %d",firstNumber + secondNumber];
        
        if ( firstNumber == secondNumber)
        {
            self.doubles.text = @"Doubles!";
        }
        
        //20 sided dice logic
        if ( self.twentyLabel.hidden == NO){
            self.Label.hidden = YES;
            int number = [diceController getDiceNumberTwenty];
            self.twentyLabel.text = [NSString stringWithFormat:@"%d",number];
        }
        
    } else {
        
        DiceDataController *diceController = [[DiceDataController alloc] init];
        
        int firstNumber = [diceController getDiceNumber];
        int secondNumber = [diceController getDiceNumber];
        [self.firstDiceView showDieNumber:firstNumber];
        [self.secondDiceView showDieNumber:secondNumber];
        
        self.Label.hidden = NO;
        self.Label.text = @"Rolling...";
        
        //20 sided dice logic
        if ( self.twentyLabel.hidden == NO){
            int number = [diceController getDiceNumberTwenty];
            self.twentyLabel.text = [NSString stringWithFormat:@"%d",number];
        }
        
        self.count++;
        
        
    }
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake)
    {
        [self rollClicked:self];
    }
}

- (IBAction)changeDice:(UISegmentedControl *)segmentedControl {
    switch (segmentedControl.selectedSegmentIndex) {
        case 0: // 6 sided
            self.twentySided.hidden = YES;
            self.twentyLabel.hidden = YES;
            self.firstDiceView.hidden = NO;
            self.secondDiceView.hidden = NO;
            self.doubles.hidden = NO;
            self.Label.hidden = NO;
            break;
            
        case 1: // 20 sided
            self.twentySided.hidden = NO;
            self.twentyLabel.hidden = NO; 
            self.firstDiceView.hidden = YES;
            self.secondDiceView.hidden = YES;
            self.doubles.hidden = YES;
            self.Label.hidden = YES;
            break;
            
        default:
            break;
    }
    
}

@end
