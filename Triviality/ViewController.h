//
//  ViewController.h
//  Triviality
//
//  Created by ling toby on 5/20/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//
/*
 
 Build a simple trivia app, which asks the user a question and then presents a series of multiple-choice answers
 When the user selects the correct answer, they should be taken to the next question
 When the user selects an incorrect answer, they should receive a message indicating they got the question wrong, and have the option to try again
 Your app should include a minimum of 5 questions, and should show the user their score at the end of the game
 Bonus: When the user guesses correctly, the background color should turn green for 1-2 seconds; if the user guesses incorrectly, the background color should flash red for 1-2 seconds
 */

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *questionDisplayLabel;
@property (weak, nonatomic) IBOutlet UIButton *submitButton;
@property (weak, nonatomic) IBOutlet UITextField *answerInputField;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (strong, nonatomic) NSTimer *timer;




@end

