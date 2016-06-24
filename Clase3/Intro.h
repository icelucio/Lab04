//
//  Intro.h
//  Clase3
//
//  Created by Lucio on 6/20/16.
//  Copyright © 2016 Lucio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "declarations.h"
#import "home.h"

@interface Intro : UIViewController
@property NSUInteger                                iPageIndex;
@property (strong, nonatomic) IBOutlet UILabel *lblintro;
@property (strong, nonatomic) IBOutlet UIImageView *imgIntro;
@property (strong, nonatomic) IBOutlet UIButton *btnIntro;
- (IBAction)btnIntroPressed:(id)sender;

@end
