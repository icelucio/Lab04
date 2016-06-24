//
//  HomeViewController.h
//  Clase3
//
//  Created by Lucio on 6/23/16.
//  Copyright © 2016 Lucio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cellAvengers.h"

@interface Home : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *tblAvengers;
@property (strong, nonatomic) IBOutlet UILabel *lblsel;

@end
