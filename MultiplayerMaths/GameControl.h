//
//  GameControl.h
//  MultiplayerMaths
//
//  Created by Jenny Chang on 18/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameControl : NSObject

@property (nonatomic, assign) NSInteger correctAnswer;
@property (nonatomic, assign) NSInteger firstNumber;
@property (nonatomic, assign) NSInteger secondNumber;

-(NSString *)generateQuestion;
-(BOOL)checkAnswer:(NSString *)userAnswer;


@end

NS_ASSUME_NONNULL_END
