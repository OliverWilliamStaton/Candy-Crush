//
//  Game.h
//  Candy Crush
//
//  Created by Oliver Staton on 8/18/14.
//  Copyright (c) 2014 OllieStat. All rights reserved.
//

#import <UIKit/UIKit.h>

int Candy1Type;
int Candy2Type;
int Candy3Type;
int Candy4Type;
int Candy5Type;
int Candy6Type;
int Candy7Type;
int Candy8Type;
int Candy9Type;
int Candy10Type;
int Candy11Type;
int Candy12Type;
int Candy13Type;
int Candy14Type;
int Candy15Type;
int Candy16Type;

int FirstCandyPushed;
int FirstCandyTypePushed;
int SecondCandyPushed;
int SecondCandyTypePushed;

bool FirstCandySelected;
bool Candy1Deleted;
bool Candy2Deleted;
bool Candy3Deleted;
bool Candy4Deleted;
bool Candy5Deleted;
bool Candy6Deleted;
bool Candy7Deleted;
bool Candy8Deleted;
bool Candy9Deleted;
bool Candy10Deleted;
bool Candy11Deleted;
bool Candy12Deleted;
bool Candy13Deleted;
bool Candy14Deleted;
bool Candy15Deleted;
bool Candy16Deleted;

int MovesLeftNumber;
int ScoreNumber;
int AddedScoreNumber;

// NSInteger saves even after power down
NSInteger HighScoreNumber;

bool GameFinished;

@interface Game : UIViewController
{
    IBOutlet UIButton *Candy1;
    IBOutlet UIButton *Candy2;
    IBOutlet UIButton *Candy3;
    IBOutlet UIButton *Candy4;
    IBOutlet UIButton *Candy5;
    IBOutlet UIButton *Candy6;
    IBOutlet UIButton *Candy7;
    IBOutlet UIButton *Candy8;
    IBOutlet UIButton *Candy9;
    IBOutlet UIButton *Candy10;
    IBOutlet UIButton *Candy11;
    IBOutlet UIButton *Candy12;
    IBOutlet UIButton *Candy13;
    IBOutlet UIButton *Candy14;
    IBOutlet UIButton *Candy15;
    IBOutlet UIButton *Candy16;
    IBOutlet UIImageView *Candy1Selected;
    IBOutlet UIImageView *Candy2Selected;
    IBOutlet UIImageView *Candy3Selected;
    IBOutlet UIImageView *Candy4Selected;
    IBOutlet UIImageView *Candy5Selected;
    IBOutlet UIImageView *Candy6Selected;
    IBOutlet UIImageView *Candy7Selected;
    IBOutlet UIImageView *Candy8Selected;
    IBOutlet UIImageView *Candy9Selected;
    IBOutlet UIImageView *Candy10Selected;
    IBOutlet UIImageView *Candy11Selected;
    IBOutlet UIImageView *Candy12Selected;
    IBOutlet UIImageView *Candy13Selected;
    IBOutlet UIImageView *Candy14Selected;
    IBOutlet UIImageView *Candy15Selected;
    IBOutlet UIImageView *Candy16Selected;

    IBOutlet UIButton *Shuffle;
    IBOutlet UIButton *Exit;
    IBOutlet UILabel *Score;
    IBOutlet UILabel *MovesLeft;
    IBOutlet UILabel *HighScore;
    IBOutlet UILabel *ThanksForPlaying;
}

-(IBAction)Candy1Button:(id)sender;
-(IBAction)Candy2Button:(id)sender;
-(IBAction)Candy3Button:(id)sender;
-(IBAction)Candy4Button:(id)sender;
-(IBAction)Candy5Button:(id)sender;
-(IBAction)Candy6Button:(id)sender;
-(IBAction)Candy7Button:(id)sender;
-(IBAction)Candy8Button:(id)sender;
-(IBAction)Candy9Button:(id)sender;
-(IBAction)Candy10Button:(id)sender;
-(IBAction)Candy11Button:(id)sender;
-(IBAction)Candy12Button:(id)sender;
-(IBAction)Candy13Button:(id)sender;
-(IBAction)Candy14Button:(id)sender;
-(IBAction)Candy15Button:(id)sender;
-(IBAction)Candy16Button:(id)sender;

-(void)CheckConnection;
-(void)GetRidOfCandies;
-(void)ReplaceCandies;

-(void)CheckSwap;
-(void)UnselectCandies;
-(void)SwapCandies;

-(void)Candy1SelectedType;
-(void)Candy2SelectedType;
-(void)Candy3SelectedType;
-(void)Candy4SelectedType;
-(void)Candy5SelectedType;
-(void)Candy6SelectedType;
-(void)Candy7SelectedType;
-(void)Candy8SelectedType;
-(void)Candy9SelectedType;
-(void)Candy10SelectedType;
-(void)Candy11SelectedType;
-(void)Candy12SelectedType;
-(void)Candy13SelectedType;
-(void)Candy14SelectedType;
-(void)Candy15SelectedType;
-(void)Candy16SelectedType;

-(void)Move;
-(void)Scoring;
-(IBAction)Shuffle:(id)sender;

@end
