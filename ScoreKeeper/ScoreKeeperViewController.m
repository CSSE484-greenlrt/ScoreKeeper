//
//  ScoreKeeperViewController.m
//  ScoreKeeper
//
//  Created by Ryan Greenlee on 3/20/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

#import "ScoreKeeperViewController.h"

@interface ScoreKeeperViewController ()

@end

@implementation ScoreKeeperViewController
// Interface Builder Connections redacted
int roundNumber = 1;
int playerScores[] = {0, 0, 0, 0};
UITextField *scoreTextFields[4];
UITextView *scoresListTextViews[4];

- (void)viewDidLoad {
    [super viewDidLoad];
    scoreTextFields[0] = _player1ScoreTextField;
    scoreTextFields[1] = _player2ScoreTextField;
    scoreTextFields[2] = _player3ScoreTextField;
    scoreTextFields[3] = _player4ScoreTextField;
    //= {_player1ScoreTextField, _player2ScoreTextField, _player3ScoreTextField, _player4ScoreTextField};
    scoresListTextViews[0] = _player1ScoresTextView;
    scoresListTextViews[1] = _player2ScoresTextView;
    scoresListTextViews[2] = _player3ScoresTextView;
    scoresListTextViews[3] = _player4ScoresTextView;
    [self resetGame];
}



- (IBAction)newGame:(id)sender {
    [self resetGame];
}

- (IBAction)enterRound:(id)sender {
    [self enterScores];
}

- (void) resetGame {
    roundNumber = 1;
    self.roundLabel.text = [NSString stringWithFormat:@"Round %d", roundNumber];
    for (int i = 0; i < 4; i++) {
        playerScores[i] = 0;
        scoreTextFields[i].text = @"";
        scoresListTextViews[i].text = @"";
    }
}
- (void) enterScores {
    for (int i = 0; i < 4; i++) {
        int score = [scoreTextFields[i].text intValue];
        playerScores[i] += score;
        
        if (scoresListTextViews[i].text.length > 0) {
            scoresListTextViews[i].text = [NSString stringWithFormat:@"%@\n%d", scoresListTextViews[i].text, playerScores[i]];
        } else {
            scoresListTextViews[i].text = [NSString stringWithFormat:@"%d", playerScores[i]];
        }
        scoresListTextViews[i].textAlignment = NSTextAlignmentCenter;
        scoreTextFields[i].text = @"";
    }
    roundNumber += 1;
    self.roundLabel.text = [NSString stringWithFormat:@"Round %d", roundNumber];
    [self.view endEditing:YES];
}
@end
