//
//  FizzFacebookProfileViewController.m
//  Fizz
//
//  Created by Daze Corp on 24/07/15.
//  Copyright (c) 2015 DazeCorp. All rights reserved.
//

#import "FizzFacebookProfileViewController.h"

#import <QuartzCore/QuartzCore.h>


@interface FizzFacebookProfileViewController ()

@end

@implementation FizzFacebookProfileViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    
    
    
    _fizzlogoutbutton.delegate = self;
    
    _fizzfbloginstatus.text    = @"Fizz ";
    _fizzfbuser.text  = [NSString stringWithFormat:@"Hi! %@", _userString];
    _fizzfbemail.text = _emailString;
    _fizzfbimage.profileID = _profileID;
    
    _fizzfbimage.layer.cornerRadius  = 50;
    _fizzfbimage.layer.borderColor = [UIColor grayColor].CGColor;
    _fizzfbimage.layer.masksToBounds = YES;
    
    
    
    
    
    
  }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView {
    NSLog(@"You're logged out");
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    FizzFacebookProfileViewController *profileViewController = [storyboard instantiateViewControllerWithIdentifier:@"fizzfblogin"];
    
    [self presentViewController:profileViewController animated:YES completion:nil];
    
}

@end
