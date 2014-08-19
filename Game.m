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
