//
//  FizzFacebookProfileViewController.h
//  Fizz
//
//  Created by Daze Corp on 24/07/15.
//  Copyright (c) 2015 DazeCorp. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <FacebookSDK/FacebookSDK.h>

@interface FizzFacebookProfileViewController : UIViewController <FBLoginViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *fizzfbloginstatus;

@property (weak, nonatomic) IBOutlet FBProfilePictureView *fizzfbimage;

@property (weak, nonatomic) IBOutlet UILabel *fizzfbuser;

@property (weak, nonatomic) IBOutlet UILabel *fizzfbemail;

@property (weak, nonatomic) IBOutlet FBLoginView *fizzlogoutbutton;

@property (strong, nonatomic) NSString *userString;
@property (strong, nonatomic) NSString *emailString;
@property (strong, nonatomic) NSString *profileID;

@end
