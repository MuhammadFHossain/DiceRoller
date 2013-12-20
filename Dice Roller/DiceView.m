//
//  DiceView.m
//  Dice Roller
//
//  Created by Muhammad Farhan Hossain on 12/16/2013.
//  Copyright (c) 2013 Apps Factory. All rights reserved.
//

#import "DiceView.h"

@implementation DiceView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(id) initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self){
        self.dieImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0, self.frame.size.width, self.frame.size.height)];
        
        [self addSubview:self.dieImageView]; 
    }
    return self;
}

- (void)showDieNumber : (int)num
{
    NSString *fileName = [NSString stringWithFormat:@"dice%d.png", num];
    
    self.dieImageView.image = [UIImage imageNamed:fileName];
}


@end
