//
//  Game.m
//  Candy Crush
//
//  Created by Oliver Staton on 8/18/14.
//  Copyright (c) 2014 OllieStat. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

// Reset all elements to initial state
-(void)UnselectCandies
{
    // Hide all candies selections
    Candy1Selected.hidden = YES;
    Candy2Selected.hidden = YES;
    Candy3Selected.hidden = YES;
    Candy4Selected.hidden = YES;
    Candy5Selected.hidden = YES;
    Candy6Selected.hidden = YES;
    Candy7Selected.hidden = YES;
    Candy8Selected.hidden = YES;
    Candy9Selected.hidden = YES;
    Candy10Selected.hidden = YES;
    Candy11Selected.hidden = YES;
    Candy12Selected.hidden = YES;
    Candy13Selected.hidden = YES;
    Candy14Selected.hidden = YES;
    Candy15Selected.hidden = YES;
    Candy16Selected.hidden = YES;
    
    // Reset history parameters
    FirstCandySelected = NO;
    FirstCandyPushed = 0;
    FirstCandyTypePushed = 0;
    SecondCandyPushed = 0;
    SecondCandyTypePushed = 0;
}

-(void)SwapCandies
{
    switch (FirstCandyPushed)
    {
        case 1:
            Candy1Type = SecondCandyTypePushed;
            [self Candy1SelectedType];
            break;
        case 2:
            Candy2Type = SecondCandyTypePushed;
            [self Candy2SelectedType];
            break;
        case 3:
            Candy3Type = SecondCandyTypePushed;
            [self Candy3SelectedType];
            break;
        case 4:
            Candy4Type = SecondCandyTypePushed;
            [self Candy4SelectedType];
            break;
        case 5:
            Candy5Type = SecondCandyTypePushed;
            [self Candy5SelectedType];
            break;
        case 6:
            Candy6Type = SecondCandyTypePushed;
            [self Candy6SelectedType];
            break;
        case 7:
            Candy7Type = SecondCandyTypePushed;
            [self Candy7SelectedType];
            break;
        case 8:
            Candy8Type = SecondCandyTypePushed;
            [self Candy8SelectedType];
            break;
        case 9:
            Candy9Type = SecondCandyTypePushed;
            [self Candy9SelectedType];
            break;
        case 10:
            Candy10Type = SecondCandyTypePushed;
            [self Candy10SelectedType];
            break;
        case 11:
            Candy11Type = SecondCandyTypePushed;
            [self Candy11SelectedType];
            break;
        case 12:
            Candy12Type = SecondCandyTypePushed;
            [self Candy12SelectedType];
            break;
        case 13:
            Candy13Type = SecondCandyTypePushed;
            [self Candy13SelectedType];
            break;
        case 14:
            Candy14Type = SecondCandyTypePushed;
            [self Candy14SelectedType];
            break;
        case 15:
            Candy15Type = SecondCandyTypePushed;
            [self Candy15SelectedType];
            break;
        case 16:
            Candy16Type = SecondCandyTypePushed;
            [self Candy16SelectedType];
        default:
            break;
    }
    
    switch (SecondCandyPushed)
    {
        case 1:
            Candy1Type = FirstCandyTypePushed;
            [self Candy1SelectedType];
            break;
        case 2:
            Candy2Type = FirstCandyTypePushed;
            [self Candy2SelectedType];
            break;
        case 3:
            Candy3Type = FirstCandyTypePushed;
            [self Candy3SelectedType];
            break;
        case 4:
            Candy4Type = FirstCandyTypePushed;
            [self Candy4SelectedType];
            break;
        case 5:
            Candy5Type = FirstCandyTypePushed;
            [self Candy5SelectedType];
            break;
        case 6:
            Candy6Type = FirstCandyTypePushed;
            [self Candy6SelectedType];
            break;
        case 7:
            Candy7Type = FirstCandyTypePushed;
            [self Candy7SelectedType];
            break;
        case 8:
            Candy8Type = FirstCandyTypePushed;
            [self Candy8SelectedType];
            break;
        case 9:
            Candy9Type = FirstCandyTypePushed;
            [self Candy9SelectedType];
            break;
        case 10:
            Candy10Type = FirstCandyTypePushed;
            [self Candy10SelectedType];
            break;
        case 11:
            Candy11Type = FirstCandyTypePushed;
            [self Candy11SelectedType];
            break;
        case 12:
            Candy12Type = FirstCandyTypePushed;
            [self Candy12SelectedType];
            break;
        case 13:
            Candy13Type = FirstCandyTypePushed;
            [self Candy13SelectedType];
            break;
        case 14:
            Candy14Type = FirstCandyTypePushed;
            [self Candy14SelectedType];
            break;
        case 15:
            Candy15Type = FirstCandyTypePushed;
            [self Candy15SelectedType];
            break;
        case 16:
            Candy16Type = FirstCandyTypePushed;
            [self Candy16SelectedType];
        default:
            break;
    }
    
    [self UnselectCandies];
}

// Determine if the First Candy and Second Candy are next to each other
-(void)CheckSwap
{
    if(FirstCandyPushed == SecondCandyPushed + 1)
    {
        [self SwapCandies];
    }
    else if(FirstCandyPushed == SecondCandyPushed - 1)
    {
        [self SwapCandies];
    }
    else if(FirstCandyPushed == SecondCandyPushed + 4)
    {
        [self SwapCandies];
    }
    else if(FirstCandyPushed == SecondCandyPushed - 4)
    {
        [self SwapCandies];
    }
    else
    {
        [self UnselectCandies];
    }
}

-(IBAction)Candy1Button:(id)sender
{
    if(FirstCandyPushed == NO)
    {
        Candy1Selected.hidden = NO;
        FirstCandyPushed = 1;
        FirstCandyTypePushed = Candy1Type;
        FirstCandySelected = YES;
    }
    else
    {
        SecondCandyPushed = 1;
        SecondCandyTypePushed = Candy1Type;
        [self CheckSwap];
    }
}

-(IBAction)Candy2Button:(id)sender
{
    if(FirstCandyPushed == NO)
    {
        Candy2Selected.hidden = NO;
        FirstCandyPushed = 2;
        FirstCandyTypePushed = Candy2Type;
        FirstCandySelected = YES;
    }
    else
    {
        SecondCandyPushed = 2;
        SecondCandyTypePushed = Candy2Type;
        [self CheckSwap];
    }
}

-(IBAction)Candy3Button:(id)sender
{
    if(FirstCandyPushed == NO)
    {
        Candy3Selected.hidden = NO;
        FirstCandyPushed = 3;
        FirstCandyTypePushed = Candy3Type;
        FirstCandySelected = YES;
    }
    else
    {
        SecondCandyPushed = 3;
        SecondCandyTypePushed = Candy3Type;
        [self CheckSwap];
    }
}

-(IBAction)Candy4Button:(id)sender
{
    if(FirstCandyPushed == NO)
    {
        Candy4Selected.hidden = NO;
        FirstCandyPushed = 4;
        FirstCandyTypePushed = Candy4Type;
        FirstCandySelected = YES;
    }
    else
    {
        SecondCandyPushed = 4;
        SecondCandyTypePushed = Candy4Type;
        [self CheckSwap];
    }
}

-(IBAction)Candy5Button:(id)sender
{
    if(FirstCandyPushed == NO)
    {
        Candy5Selected.hidden = NO;
        FirstCandyPushed = 5;
        FirstCandyTypePushed = Candy5Type;
        FirstCandySelected = YES;
    }
    else
    {
        SecondCandyPushed = 5;
        SecondCandyTypePushed = Candy5Type;
        [self CheckSwap];
    }
}

-(IBAction)Candy6Button:(id)sender
{
    if(FirstCandyPushed == NO)
    {
        Candy6Selected.hidden = NO;
        FirstCandyPushed = 6;
        FirstCandyTypePushed = Candy6Type;
        FirstCandySelected = YES;
    }
    else
    {
        SecondCandyPushed = 6;
        SecondCandyTypePushed = Candy6Type;
        [self CheckSwap];
    }
}

-(IBAction)Candy7Button:(id)sender
{
    if(FirstCandyPushed == NO)
    {
        Candy7Selected.hidden = NO;
        FirstCandyPushed = 7;
        FirstCandyTypePushed = Candy7Type;
        FirstCandySelected = YES;
    }
    else
    {
        SecondCandyPushed = 7;
        SecondCandyTypePushed = Candy7Type;
        [self CheckSwap];
    }
}

-(IBAction)Candy8Button:(id)sender
{
    if(FirstCandyPushed == NO)
    {
        Candy8Selected.hidden = NO;
        FirstCandyPushed = 8;
        FirstCandyTypePushed = Candy8Type;
        FirstCandySelected = YES;
    }
    else
    {
        SecondCandyPushed = 8;
        SecondCandyTypePushed = Candy8Type;
        [self CheckSwap];
    }
}

-(IBAction)Candy9Button:(id)sender
{
    if(FirstCandyPushed == NO)
    {
        Candy9Selected.hidden = NO;
        FirstCandyPushed = 9;
        FirstCandyTypePushed = Candy9Type;
        FirstCandySelected = YES;
    }
    else
    {
        SecondCandyPushed = 9;
        SecondCandyTypePushed = Candy9Type;
        [self CheckSwap];
    }
}

-(IBAction)Candy10Button:(id)sender
{
    if(FirstCandyPushed == NO)
    {
        Candy10Selected.hidden = NO;
        FirstCandyPushed = 10;
        FirstCandyTypePushed = Candy10Type;
        FirstCandySelected = YES;
    }
    else
    {
        SecondCandyPushed = 10;
        SecondCandyTypePushed = Candy10Type;
        [self CheckSwap];
    }
}

-(IBAction)Candy11Button:(id)sender
{
    if(FirstCandyPushed == NO)
    {
        Candy11Selected.hidden = NO;
        FirstCandyPushed = 11;
        FirstCandyTypePushed = Candy11Type;
        FirstCandySelected = YES;
    }
    else
    {
        SecondCandyPushed = 11;
        SecondCandyTypePushed = Candy11Type;
        [self CheckSwap];
    }
}

-(IBAction)Candy12Button:(id)sender
{
    if(FirstCandyPushed == NO)
    {
        Candy12Selected.hidden = NO;
        FirstCandyPushed = 12;
        FirstCandyTypePushed = Candy12Type;
        FirstCandySelected = YES;
    }
    else
    {
        SecondCandyPushed = 12;
        SecondCandyTypePushed = Candy12Type;
        [self CheckSwap];
    }
}

-(IBAction)Candy13Button:(id)sender
{
    if(FirstCandyPushed == NO)
    {
        Candy13Selected.hidden = NO;
        FirstCandyPushed = 13;
        FirstCandyTypePushed = Candy13Type;
        FirstCandySelected = YES;
    }
    else
    {
        SecondCandyPushed = 13;
        SecondCandyTypePushed = Candy13Type;
        [self CheckSwap];
    }
}

-(IBAction)Candy14Button:(id)sender
{
    if(FirstCandyPushed == NO)
    {
        Candy14Selected.hidden = NO;
        FirstCandyPushed = 14;
        FirstCandyTypePushed = Candy14Type;
        FirstCandySelected = YES;
    }
    else
    {
        SecondCandyPushed = 14;
        SecondCandyTypePushed = Candy14Type;
        [self CheckSwap];
    }
}

-(IBAction)Candy15Button:(id)sender
{
    if(FirstCandyPushed == NO)
    {
        Candy15Selected.hidden = NO;
        FirstCandyPushed = 15;
        FirstCandyTypePushed = Candy15Type;
        FirstCandySelected = YES;
    }
    else
    {
        SecondCandyPushed = 15;
        SecondCandyTypePushed = Candy15Type;
        [self CheckSwap];
    }
}

-(IBAction)Candy16Button:(id)sender
{
    if(FirstCandyPushed == NO)
    {
        Candy16Selected.hidden = NO;
        FirstCandyPushed = 16;
        FirstCandyTypePushed = Candy16Type;
        FirstCandySelected = YES;
    }
    else
    {
        SecondCandyPushed = 16;
        SecondCandyTypePushed = Candy16Type;
        [self CheckSwap];
    }
}

-(UIImage *)DetermineCandyType:(int)CandyType
{
    UIImage *buttonImage;

    switch(CandyType)
    {
        case 0:
        {
            buttonImage = [UIImage imageNamed:@"BlueCandy.png"];
        }
            break;
            
        case 1:
        {
            buttonImage = [UIImage imageNamed:@"PinkCandy.png"];
        }
            break;
            
        case 2:
        {
            buttonImage = [UIImage imageNamed:@"GreenCandy.png"];
        }
            break;
            
        case 3:
        {
            buttonImage = [UIImage imageNamed:@"OrangeCandy.png"];
        }
            break;
            
        default:
            break;
    }
    
    return buttonImage;
}

-(void)Candy1SelectedType
{
    UIImage *buttonImage = [self DetermineCandyType:Candy1Type];
    [Candy1 setImage:buttonImage forState:UIControlStateNormal];
    [self.view addSubview:Candy1];
}

-(void)Candy2SelectedType
{
    UIImage *buttonImage = [self DetermineCandyType:Candy2Type];
    [Candy2 setImage:buttonImage forState:UIControlStateNormal];
    [self.view addSubview:Candy2];
}

-(void)Candy3SelectedType
{
    UIImage *buttonImage = [self DetermineCandyType:Candy3Type];
    [Candy3 setImage:buttonImage forState:UIControlStateNormal];
    [self.view addSubview:Candy3];
}

-(void)Candy4SelectedType
{
    UIImage *buttonImage = [self DetermineCandyType:Candy4Type];
    [Candy4 setImage:buttonImage forState:UIControlStateNormal];
    [self.view addSubview:Candy4];
}

-(void)Candy5SelectedType
{
    UIImage *buttonImage = [self DetermineCandyType:Candy5Type];
    [Candy5 setImage:buttonImage forState:UIControlStateNormal];
    [self.view addSubview:Candy5];
}

-(void)Candy6SelectedType
{
    UIImage *buttonImage = [self DetermineCandyType:Candy6Type];
    [Candy6 setImage:buttonImage forState:UIControlStateNormal];
    [self.view addSubview:Candy6];
}

-(void)Candy7SelectedType
{
    UIImage *buttonImage = [self DetermineCandyType:Candy7Type];
    [Candy7 setImage:buttonImage forState:UIControlStateNormal];
    [self.view addSubview:Candy7];
}

-(void)Candy8SelectedType
{
    UIImage *buttonImage = [self DetermineCandyType:Candy8Type];
    [Candy8 setImage:buttonImage forState:UIControlStateNormal];
    [self.view addSubview:Candy8];
}

-(void)Candy9SelectedType
{
    UIImage *buttonImage = [self DetermineCandyType:Candy9Type];
    [Candy9 setImage:buttonImage forState:UIControlStateNormal];
    [self.view addSubview:Candy9];
}

-(void)Candy10SelectedType
{
    UIImage *buttonImage = [self DetermineCandyType:Candy10Type];
    [Candy10 setImage:buttonImage forState:UIControlStateNormal];
    [self.view addSubview:Candy10];
}

-(void)Candy11SelectedType
{
    UIImage *buttonImage = [self DetermineCandyType:Candy11Type];
    [Candy11 setImage:buttonImage forState:UIControlStateNormal];
    [self.view addSubview:Candy11];
}

-(void)Candy12SelectedType
{
    UIImage *buttonImage = [self DetermineCandyType:Candy12Type];
    [Candy12 setImage:buttonImage forState:UIControlStateNormal];
    [self.view addSubview:Candy12];
}

-(void)Candy13SelectedType
{
    UIImage *buttonImage = [self DetermineCandyType:Candy13Type];
    [Candy13 setImage:buttonImage forState:UIControlStateNormal];
    [self.view addSubview:Candy13];
}

-(void)Candy14SelectedType
{
    UIImage *buttonImage = [self DetermineCandyType:Candy14Type];
    [Candy14 setImage:buttonImage forState:UIControlStateNormal];
    [self.view addSubview:Candy14];
}

-(void)Candy15SelectedType
{
    UIImage *buttonImage = [self DetermineCandyType:Candy15Type];
    [Candy15 setImage:buttonImage forState:UIControlStateNormal];
    [self.view addSubview:Candy15];
}

-(void)Candy16SelectedType
{
    UIImage *buttonImage = [self DetermineCandyType:Candy16Type];
    [Candy16 setImage:buttonImage forState:UIControlStateNormal];
    [self.view addSubview:Candy16];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    Candy1Selected.hidden = YES;
    Candy2Selected.hidden = YES;
    Candy3Selected.hidden = YES;
    Candy4Selected.hidden = YES;
    Candy5Selected.hidden = YES;
    Candy6Selected.hidden = YES;
    Candy7Selected.hidden = YES;
    Candy8Selected.hidden = YES;
    Candy9Selected.hidden = YES;
    Candy10Selected.hidden = YES;
    Candy11Selected.hidden = YES;
    Candy12Selected.hidden = YES;
    Candy13Selected.hidden = YES;
    Candy14Selected.hidden = YES;
    Candy15Selected.hidden = YES;
    Candy16Selected.hidden = YES;
    
    Candy1Type = arc4random() %4;
    Candy2Type = arc4random() %4;
    Candy3Type = arc4random() %4;
    Candy4Type = arc4random() %4;
    Candy5Type = arc4random() %4;
    Candy6Type = arc4random() %4;
    Candy7Type = arc4random() %4;
    Candy8Type = arc4random() %4;
    Candy9Type = arc4random() %4;
    Candy10Type = arc4random() %4;
    Candy11Type = arc4random() %4;
    Candy12Type = arc4random() %4;
    Candy13Type = arc4random() %4;
    Candy14Type = arc4random() %4;
    Candy15Type = arc4random() %4;
    Candy16Type = arc4random() %4;
    
    [self Candy1SelectedType];
    [self Candy2SelectedType];
    [self Candy3SelectedType];
    [self Candy4SelectedType];
    [self Candy5SelectedType];
    [self Candy6SelectedType];
    [self Candy7SelectedType];
    [self Candy8SelectedType];
    [self Candy9SelectedType];
    [self Candy10SelectedType];
    [self Candy11SelectedType];
    [self Candy12SelectedType];
    [self Candy13SelectedType];
    [self Candy14SelectedType];
    [self Candy15SelectedType];
    [self Candy16SelectedType];

    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
