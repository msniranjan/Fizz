//
//  FizzFacebookLloginViewController.h
//  Fizz
//
//  Created by Daze Corp on 24/07/15.
//  Copyright (c) 2015 DazeCorp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface FizzFacebookLoginViewController : UIViewController <FBLoginViewDelegate>


@property (weak, nonatomic) IBOutlet UIImageView *fizzimgfb;
@property (weak, nonatomic) IBOutlet FBLoginView *fizzloginbutton;

@end
