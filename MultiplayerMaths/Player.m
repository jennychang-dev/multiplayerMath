//
//  Player.m
//  MultiplayerMaths
//
//  Created by Jenny Chang on 18/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentIndex = 1;
        _player1Lives = 3;
        _player2Lives = 3;
    }
    return self;
}

-(NSInteger)chooseNextPlayer {

    if (self.currentIndex == 0) {
        self.currentIndex ++;
        return self.currentIndex;
    } else {
        self.currentIndex = 0;
        return self.currentIndex;
    }

}

-(NSString *)lowerLifeForPlayer:(NSString *)playerNumber
{
    if ([playerNumber isEqualToString:@"player 1"]) {
        self.player1Lives --;
        return [NSString stringWithFormat:@"%lu",self.player1Lives];
//        return self.player1Lives --;
    } else {
        self.player2Lives --;
        return [NSString stringWithFormat:@"%lu",self.player2Lives];
    }
}


@end
