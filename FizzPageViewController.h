//
//  FizzPageViewController.h
//  Fizz
//
//  Created by Daze Corp on 18/07/15.
//  Copyright (c) 2015 DazeCorp. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface  FizzPageViewController: UIViewController  

@property (weak, nonatomic) IBOutlet UIImageView *fizzinfobackgroundImageView;
@property (weak, nonatomic) IBOutlet UILabel *finninfolabel;
@property (weak, nonatomic) IBOutlet UIImageView *fizzloginUiIimage;



@property NSUInteger pageIndex;
@property NSString *titleText;
@property NSString *imageFile;
@property NSString *logimageFile;
@end
