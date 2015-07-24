//
//  FizzFacebookLogin.h
//  Fizz
//
//  Created by Daze Corp on 22/07/15.
//  Copyright (c) 2015 DazeCorp. All rights reserved.
//

#import <FacebookSDK/FacebookSDK.h>

@interface FizzFacebookLogin : UIViewController <FBLoginViewDelegate>


@property (weak, nonatomic) IBOutlet UILabel *fizzfbuser;
@property (weak, nonatomic) IBOutlet UILabel *fizzfbemail;

@property (weak, nonatomic) IBOutlet UILabel *fizzfbloginstatus;
@property (weak, nonatomic) IBOutlet FBLoginView *fizzfbloginbtn;

@property (weak, nonatomic) IBOutlet FBProfilePictureView *fizzfbprofilepicture;
@end
