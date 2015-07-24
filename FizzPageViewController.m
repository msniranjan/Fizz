//
//  FizzPageViewController.m
//  Fizz
//
//  Created by Daze Corp on 18/07/15.
//  Copyright (c) 2015 DazeCorp. All rights reserved.
//
#import "FizzPageViewController.h"

#import "FizzFacebookProfileViewController.h"
#import "FizzFacebookLoginViewController.h"
#import "FizzNetworkViewController.h"

@interface FizzPageViewController ()

@end


@implementation FizzPageViewController;

@synthesize fizzinfobackgroundImageView;

@synthesize fizzloginUiIimage;

@synthesize imageFile;
@synthesize logimageFile;

@synthesize pageIndex;
@synthesize finninfolabel;
@synthesize titleText;



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
    [super viewDidLoad];
 
    
    UIPageControl *pageControl = [UIPageControl appearance];
    pageControl.pageIndicatorTintColor = [UIColor lightGrayColor];
    pageControl.currentPageIndicatorTintColor = [UIColor redColor];
    pageControl.backgroundColor = [UIColor whiteColor];
    
       
   // [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"bg"]]];
    
    
    self.fizzinfobackgroundImageView.image = [UIImage imageNamed:self.imageFile];
    self.finninfolabel.text = self.titleText;
    self.fizzloginUiIimage.image=[UIImage imageNamed:self.logimageFile];
    
    
    //finninfolabel.textAlignment = NSTextAlignmentCenter;
      NSLog(@"%s", "FizzPageViewController - ViewDidload");
    
    //   UIViewController *controller = [[UIViewController alloc] initWithNibName:@"myXib" bundle:[NSBundle mainBundle]];
    
    
   // [fizzloginUiIimage setImage:[UIImage imageNamed:@"image.png"]];
    [fizzloginUiIimage setUserInteractionEnabled:YES];
    UITapGestureRecognizer *singleTap =  [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapping:)];
    [singleTap setNumberOfTapsRequired:1];
    [fizzloginUiIimage addGestureRecognizer:singleTap];
    [self.view addSubview:fizzloginUiIimage];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)singleTapping:(UIGestureRecognizer *)recognizer
{
    NSLog(@"image click");
    
    //  FizzNetworkViewController *sampleView = [[FizzNetworkViewController alloc] init];
    //  [self presentViewController:sampleView animated:NO completion:nil];
    
  //  FizzFacebookLoginViewController *sfvc = [[FizzFacebookLoginViewController alloc] initWithNibName:@"fizzfbloginviewcontoller" bundle:nil];
   // [self presentViewController:sfvc animated:NO completion:nil];
    
    
   // UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
  //  FizzFacebookLoginViewController *sfvc = [storyboard instantiateViewControllerWithIdentifier:@"fizzfbloginviewcontoller"];
   // [sfvc setModalPresentationStyle:UIModalPresentationFullScreen];
   // [self presentViewController:sfvc animated:YES completion:nil];

    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    FizzFacebookLoginViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"fizzfblogin"];
        [[UIApplication sharedApplication].keyWindow setRootViewController:vc];
    
    
   // FizzFacebookLoginViewController *infoController = [self.storyboard instantiateViewControllerWithIdentifier:@"fizzfbloginviewcontoller"];
    //[self.navigationController pushViewController:infoController animated:NO];

}




@end

