//
//  FizzFacebookLloginViewController.m
//  Fizz
//
//  Created by Daze Corp on 24/07/15.
//  Copyright (c) 2015 DazeCorp. All rights reserved.
//

#import "FizzFacebookLoginViewController.h"
#import "FizzFacebookProfileViewController.h"




@interface FizzFacebookLoginViewController ()

@end

@implementation FizzFacebookLoginViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [FBLoginView class];
    [FBProfilePictureView class];
    
        
    _fizzloginbutton.readPermissions = @[@"public_profile", @"email"];
    _fizzloginbutton.delegate = self;
    
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"bg"]]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
}



- (void)loginViewShowingLoggedInUser:(FBLoginView *)loginView{
    NSLog(@"You're logged in");
}

- (void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView {
    NSLog(@"You're logged out");
}

- (void)loginViewFetchedUserInfo:(FBLoginView *)loginView user:(id<FBGraphUser>)user{
    NSLog(@"%@", user);
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    FizzFacebookProfileViewController *profileViewController = [storyboard instantiateViewControllerWithIdentifier:@"fizzfbprofileviewcontroller"];
    
    profileViewController.userString    = [user name];
    profileViewController.emailString   = [user objectForKey:@"email"];
    profileViewController.profileID     = user.id;
    
    [self presentViewController:profileViewController animated:YES completion:nil];
    
}

- (void)loginView:(FBLoginView *)loginView handleError:(NSError *)error{
    NSLog(@"%@", [error localizedDescription]);
}


@end
