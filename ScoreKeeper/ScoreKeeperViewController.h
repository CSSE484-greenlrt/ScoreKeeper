//
//  ScoreKeeperViewController.h
//  ScoreKeeper
//
//  Created by Ryan Greenlee on 3/20/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScoreKeeperViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *roundLabel;
@property (weak, nonatomic) IBOutlet UITextField *player1ScoreTextField;
@property (weak, nonatomic) IBOutlet UITextField *player2ScoreTextField;
@property (weak, nonatomic) IBOutlet UITextField *player3ScoreTextField;
@property (weak, nonatomic) IBOutlet UITextField *player4ScoreTextField;
@property (weak, nonatomic) IBOutlet UITextView *player1ScoresTextView;
@property (weak, nonatomic) IBOutlet UITextView *player2ScoresTextView;
@property (weak, nonatomic) IBOutlet UITextView *player3ScoresTextView;
@property (weak, nonatomic) IBOutlet UITextView *player4ScoresTextView;

- (IBAction)newGame:(id)sender;
- (IBAction)enterRound:(id)sender;



@end
