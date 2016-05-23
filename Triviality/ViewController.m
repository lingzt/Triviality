//
//  ViewController.m
//  Triviality
//
//  Created by ling toby on 5/20/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

@end

@implementation ViewController

//MARK: - Properties
    //1.2 set the default value
    NSString *question1 = @"What is the name of the first paved road in the US?";
    NSString *correctAnswer1 = @"WOODWARD";
    NSString *question2 = @" On average,  how many pounds of chips Detroiters consume a year. The rest of the country eats about 4 pounds annually.";
    NSString *correctAnswer2 = @"7";
    NSString *question3 = @"what is the name of the first paved road in the US?";
    NSString *correctAnswer3 = @"WOODWARD";
    NSString *question4 = @" On average,  how many pounds of chips Detroiters consume a year. The rest of the country eats about 4 pounds annually.";
    NSString *correctAnswer4 = @"7";
    NSString *question5 = @" On average,  how many pounds of chips Detroiters consume a year. The rest of the country eats about 4 pounds annually.";
    NSString *correctAnswer5 = @"7";


    NSString *userAnswerUppercase = @"";
    NSString *userAnswer = @"";
    BOOL ifAnswerCorrect = NO;
    NSInteger score = 0 ;
    static NSArray *questionArray = nil;
    static NSArray *answerArray = nil;
    double timerInterval = 1.0f;







//MARK: - Life Cycle Methods
- (void)viewDidLoad {
    //1.1 initiate the view
    [super viewDidLoad];
    self.questionDisplayLabel.text = question1;
    self.answerInputField.text = @"Your answer here";

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}




//MARK: - Interactivity Methods



    //2. make user answer upcase
-(void)makeUserAnswerUpcase{
    NSLog(@"\nmakeUserAnswerUpcase success, if see upper case:  %@ ",[userAnswer uppercaseString] );
    userAnswerUppercase = [userAnswer uppercaseString];
}



    //3. compare answer and check if answer is correct.
-(void)checkAnswer {
    NSLog(@"\ncorrectAnswer is %@\n",correctAnswer1);
    NSLog(@"\nuserAnswer uppcase is %@\n",userAnswerUppercase);
    ifAnswerCorrect = ([correctAnswer1 isEqualToString:userAnswerUppercase]);
    if (ifAnswerCorrect){
        [self resetQuestion];
    }else{
        [self remindUserTryAgain];
    }
}


    //4. 5. 8. clean label,show new question, score + 100, show in label, background color changed
-(void)resetQuestion{
    self.questionDisplayLabel.text = @"test: I am the next question";
    self.answerInputField.text = @"";
    score += 100;
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %ld", (long)score];
    self.view.backgroundColor = [UIColor greenColor];
    [self timer];
    //self.view.backgroundColor = [UIColor clearColor];
    
}


    //6. clean answer label
-(void)remindUserTryAgain{
    self.answerInputField.text = @"Try again? Type answer here ^_^";

}


    //7. user submit answer, answer processed, checked.
- (IBAction)answerSubmit:(UIButton *)sender {
    userAnswer = self.answerInputField.text;
    [self makeUserAnswerUpcase];
    [self checkAnswer];
    
    //
}



//10 Screen flash green color

- (NSTimer *) timer {
    if (!_timer) {
        _timer = [NSTimer timerWithTimeInterval:timerInterval target:self selector:@selector(onTick:) userInfo:nil repeats:YES];
    }
    return _timer;
}

-(void)onTick:(NSTimer*)timer
{
    self.view.backgroundColor = [UIColor greenColor];
}


//9 creat question array and Answer Array
//-(void)creatQAndAArr{
//    questionArray = [[NSArray arrayWithObjects:@"what is the name of the first paved road in the US?", "On average, Detroiters consume how many pounds of chips a year? The rest of the country eats about 4 pounds annually",nil]retain];
//    //answerArray = [NSArray arrayWithObjects:@"WOODWARD", @"7",nil];
//}

//questionArray = [[NSArray arrayWithObjects:@"what is the name of the first paved road in the US?", "On average, Detroiters consume how many pounds of chips a year? The rest of the country eats about 4 pounds annually",nil]retain];
//[self creatQAndAArr];




@end
