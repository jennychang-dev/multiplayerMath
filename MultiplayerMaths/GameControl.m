//
//  GameControl.m
//  MultiplayerMaths
//
//  Created by Jenny Chang on 18/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "GameControl.h"

@implementation GameControl

-(NSString *)generateQuestion {
    
    self.firstNumber = 1 + arc4random_uniform(20);
    self.secondNumber = 1 + arc4random_uniform(20);
    self.correctAnswer = self.firstNumber + self.secondNumber;
    NSLog(@"correct answer is %lu",self.correctAnswer);

    NSString *question = [NSString stringWithFormat:@"what is %lu + %lu?",self.firstNumber,self.secondNumber];
    return question;
}

-(BOOL)checkAnswer:(NSString *)userAnswer {
    
    // convert value string to NSInteger
    NSInteger userAnswerInt = [userAnswer integerValue];

    if (userAnswerInt == self.correctAnswer) {
        return YES;
    } else {
        return NO;
    }
    
}


@end
