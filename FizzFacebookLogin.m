//
//  FizzFacebookLogin.m
//  Fizz
//
//  Created by Daze Corp on 22/07/15.
//  Copyright (c) 2015 DazeCorp. All rights reserved.
//

#import "FizzFacebookLogin.h"
#import <FacebookSDK/FacebookSDK.h>
#import "AppDelegate.h"



@interface FizzFacebookLogin ()

-(void)toggleHiddenState:(BOOL)shouldHide;

@end

@implementation FizzFacebookLogin
@synthesize fizzfbuser;
@synthesize fizzfbemail;
@synthesize fizzfbloginstatus;
@synthesize fizzfbloginbtn;



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"viewDidLoad");
        
    [self toggleHiddenState:YES];
    [[self fizzfbloginstatus] setText:@""];
    self.fizzfbloginbtn.readPermissions = @[@"public_profile", @"email"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)toggleHiddenState:(BOOL)shouldHide
{
    NSLog(@"toggleHiddenState: %i", shouldHide);
    
    self.fizzfbemail.hidden = shouldHide;
    self.fizzfbuser.hidden = shouldHide;
    self.fizzfbprofilepicture.hidden = shouldHide;
}

-(void)loginViewShowingLoggedInUser:(FBLoginView *)loginView
{
    NSLog(@"loginViewShowingLoggedInUser");
    // When user login.
    
    self.fizzfbloginstatus.text = @"You're Logged in.";
    [self toggleHiddenState:NO];
}

-(void)loginViewFetchedUserInfo:(FBLoginView *)loginView user:(id<FBGraphUser>)user
{
    NSLog(@"loginViewFetchedUserInfo");
    // When user info fetching..
    NSLog(@"%@",user);
    
    self.fizzfbprofilepicture.profileID = [user objectForKey:@"id"];
    self.fizzfbuser.text = user.name;
    self.fizzfbemail.text = [user objectForKey:@"email"];
}

-(void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView
{
    NSLog(@"loginViewShowingLoggedOutUser");
    
    self.fizzfbloginstatus.text = @"You are logged out.";
    
    [self toggleHiddenState:YES];
}

-(void)loginView:(FBLoginView *)loginView handleError:(NSError *)error
{
    NSLog(@"handleError");
    
    NSLog(@"%@",[error localizedDescription]);
}



@end
