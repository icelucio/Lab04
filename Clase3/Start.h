//
//  ViewController.h
//  Clase3
//
//  Created by Lucio on 6/17/16.
//  Copyright © 2016 Lucio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"
#import "Intro.h"

@interface Start : UIViewController<UIPageViewControllerDelegate, UIPageViewControllerDataSource>

@property (strong, nonatomic)UIPageViewController *pageViewController;

@end

