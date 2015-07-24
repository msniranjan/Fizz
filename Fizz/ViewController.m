//
//  ViewController.m
//  Fizz
//
//  Created by Daze Corp on 18/07/15.
//  Copyright (c) 2015 DazeCorp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    
      NSLog(@"%s", "Fizz ViewController - ViewDidload");
    
    // Create the data model
    _pageTitles = @[@"Browse Our F!ZZ-tastic offers & discounts	", @"All you need is your mobile to pay", @"You can also collect loyalty stamps and get freebies on subsequent visits.", @"There's more! if you're a student, get more features and privileges."];
    _pageImages = @[@"info1.png", @"infotwo.png", @"info3.png", @"info4.png"];
    _pagelogin = @[@"", @"", @"", @"login_with_facebook"];
    
    
  //  [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"bg"]]];
    
    
    
    // Create page view controller
    
    self.pageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageViewController"];
    self.pageViewController.dataSource = self;
   
    
    FizzPageViewController *startingViewController = [self viewControllerAtIndex:0];
    
    NSArray *viewControllers = @[startingViewController];
    
   [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    // Change the size of page view controller
    self.pageViewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 30);
    
    [self addChildViewController:_pageViewController];
    [self.view addSubview:_pageViewController.view];
    [self.pageViewController didMoveToParentViewController:self];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (FizzPageViewController *)viewControllerAtIndex:(NSUInteger)index
{
    if (([self.pageTitles count] == 0) || (index >= [self.pageTitles count])) {
        return nil;
    }
    
    // Create a new view controller and pass suitable data.
    FizzPageViewController *pageContentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"FizzPageViewController"];
    pageContentViewController.imageFile = self.pageImages[index];
    pageContentViewController.titleText= self.pageTitles[index];
    pageContentViewController.logimageFile=self.pagelogin[index];
    pageContentViewController.pageIndex = index;
    NSLog(@"%s", "Fizz ViewController - ViewDidload");
    NSLog(@"FIZZ INDEX%i",index);
    
    return pageContentViewController;
}

#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = ((FizzPageViewController*) viewController).pageIndex;
    
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    
    index--;
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = ((FizzPageViewController*) viewController).pageIndex;
    
    if (index == NSNotFound) {
        return nil;
    }
    
    index++;
    if (index == [self.pageTitles count]) {
        return nil;
    }
    return [self viewControllerAtIndex:index];
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return [self.pageTitles count];
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    return 0;
}

@end
