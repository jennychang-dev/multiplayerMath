//
//  ViewController.m
//  MultiplayerMaths
//
//  Created by Jenny Chang on 18/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "ViewController.h"
#import "Player.h"
#import "QuestionGenerator.h"
#import "GameControl.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *generateQuestion;
@property (weak, nonatomic) IBOutlet UILabel *p1score;
@property (weak, nonatomic) IBOutlet UILabel *p2score;
@property (weak, nonatomic) IBOutlet UILabel *inputVal;

@property Player *whichPlayer;
@property Player *player1;
@property Player *player2;
@property NSString *inputTotal;

@property GameControl *GC;

@end

@implementation ViewController

// input number on keypad

- (IBAction)n1:(UIButton *)sender {
    self.inputVal.text = [self.inputVal.text stringByAppendingString:@"1"];
    [self takeMyValue];
}

- (IBAction)n2:(UIButton *)sender {
    self.inputVal.text = [self.inputVal.text stringByAppendingString:@"2"];
    [self takeMyValue];
}

- (IBAction)n3:(UIButton *)sender {
    self.inputVal.text = [self.inputVal.text stringByAppendingString:@"3"];
    [self takeMyValue];
}

- (IBAction)n4:(UIButton *)sender {
    self.inputVal.text = [self.inputVal.text stringByAppendingString:@"4"];
    [self takeMyValue];
}

- (IBAction)n5:(UIButton *)sender {
    self.inputVal.text = [self.inputVal.text stringByAppendingString:@"5"];
    [self takeMyValue];
}

- (IBAction)n6:(UIButton *)sender {
    self.inputVal.text = [self.inputVal.text stringByAppendingString:@"6"];
    [self takeMyValue];
}

- (IBAction)n7:(UIButton *)sender {
    self.inputVal.text = [self.inputVal.text stringByAppendingString:@"7"];
    [self takeMyValue];
}

- (IBAction)n8:(UIButton *)sender {
    self.inputVal.text = [self.inputVal.text stringByAppendingString:@"8"];
    [self takeMyValue];
}

- (IBAction)n9:(UIButton *)sender {
    self.inputVal.text = [self.inputVal.text stringByAppendingString:@"9"];
    [self takeMyValue];
}

- (IBAction)n0:(id)sender {
    self.inputVal.text = [self.inputVal.text stringByAppendingString:@"0"];
    [self takeMyValue];
}

// user answer

-(NSString *)takeMyValue {
    self.inputTotal = self.inputVal.text;
    return self.inputTotal;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.whichPlayer = [[Player alloc] init];
    self.GC = [[GameControl alloc] init];
    self.p1score.text = @"P1: 3";
    self.p2score.text = @"P2: 3";
}

// wbat happens when you click enter button
// create question string that includes player number depending on what the player's current index is

- (IBAction)generateQuestion:(UIButton *)sender {
    self.inputVal.text = @"";
    
    if ([self.whichPlayer chooseNextPlayer] == 0) {
 
        NSString *strWithPlayer = [@"Player 1: " stringByAppendingString: [self.GC generateQuestion]];
        self.generateQuestion.text = strWithPlayer;
        
        
    } else {
        
        NSString *strWithPlayer = [@"Player 2: " stringByAppendingString: [self.GC generateQuestion]];
        self.generateQuestion.text = strWithPlayer;
    }
    
}


- (IBAction)Enter:(UIButton *)sender {

    if ([self.GC checkAnswer:self.inputTotal] == YES) {
        self.inputVal.text = @"CORRECT!";
        
    } else {
        self.inputVal.text = @"INCORRECT!";

        
        if (self.whichPlayer.currentIndex == 0) {
            self.p1score.text = [self.whichPlayer lowerLifeForPlayer:@"player 1"];
            
            if ([self.p1score.text isEqualToString:@"0"]) {
                self.p1score.text = @"GAME OVER!";
            }
//            if ([[self.whichPlayer lowerLifeForPlayer:@"player 1"] isEqualToString:@"0"]) {
//                self.p1score.text = @"game over";
//                self.generateQuestion.text = @"Play again";
//            }

            // if score < 0 --> game over, player 2 wins
            
            
        } else {
            self.p2score.text = [self.whichPlayer lowerLifeForPlayer:@"player 2"];
            
            if ([self.p2score.text isEqualToString:@"0"]) {
                self.p2score.text = @"GAME OVER!";
            }
            
//            if ([[self.whichPlayer lowerLifeForPlayer:@"player 2"] isEqualToString:@"0"]) {
//                self.p2score.text = @"game over";
//                self.generateQuestion.text = @"Play again";
//
//            // if score < 0 --> game over, player 1 wins
//        }
        }
        
    }
    
}

@end
