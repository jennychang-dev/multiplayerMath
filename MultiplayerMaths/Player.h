//
//  Player.h
//  MultiplayerMaths
//
//  Created by Jenny Chang on 18/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuestionGenerator.h"

NS_ASSUME_NONNULL_BEGIN

@interface Player : NSObject

@property Player *player1;
@property Player *player2;
@property (nonatomic, assign) NSInteger currentIndex;
@property NSInteger player1Lives;
@property NSInteger player2Lives;

-(NSInteger)chooseNextPlayer;
-(NSString *)lowerLifeForPlayer:(NSString *)playerNumber;


@end

NS_ASSUME_NONNULL_END
