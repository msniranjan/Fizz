//
//  ViewController.h
//  Fizz
//
//  Created by Daze Corp on 18/07/15.
//  Copyright (c) 2015 DazeCorp. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "FizzPageViewController.h"

@interface ViewController : UIViewController <UIPageViewControllerDataSource>


@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) NSArray *pageTitles;
@property (strong, nonatomic) NSArray *pageImages;
@property(strong,nonatomic)NSArray *pagelogin;

@end