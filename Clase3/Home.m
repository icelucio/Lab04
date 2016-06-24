//
//  HomeViewController.m
//  Clase3
//
//  Created by Lucio on 6/23/16.
//  Copyright © 2016 Lucio. All rights reserved.
//

#import "Home.h"

@interface Home ()
@property NSMutableArray *avengerNames;
@property NSMutableArray *avengerImgs;
@end

@implementation Home
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
- (void)initController {
    self.avengerNames   = [[NSMutableArray alloc] initWithObjects: @"120i", @"M135i", @"220i", @"M235i", @"M2", @"320i", @"M340i", @"M3", @"420i", @"M440i", @"M4", @"528i", @"535i", @"M5", @"650i", @"M6", @"i8",nil];
    
    self.avengerImgs   = [[NSMutableArray alloc] initWithObjects: @"120i.jpg", @"m135i.jpg", @"220i.jpg", @"m235i.jpg", @"m2.jpg", @"320i.jpg", @"340i.jpg",@"m3.jpg",@"420i.jpg",@"440i.jpg", @"m4.jpg",@"528i.jpg",
        @"535i.jpg", @"m5.jpg", @"650i.jpg",@"m6.jpg", @"i8.jpg",nil];
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.avengerNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellAvengers *cell = (cellAvengers *)[tableView dequeueReusableCellWithIdentifier:@"cellAvengers"];
    
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellAvengers" bundle:nil] forCellReuseIdentifier:@"cellAvengers"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellAvengers"];
    }
    //Fill cell with info from arrays
    cell.lblName.text       = self.avengerNames[indexPath.row];
    cell.imgAvenger.image   = [UIImage imageNamed:self.avengerImgs[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            self.lblsel.text = @"177HP";
            break;
        case 1:
             self.lblsel.text = @"326HP";
            break;
        case 2:
            self.lblsel.text = @"184HP";
            break;
        case 3:
            self.lblsel.text = @"326HP";
            break;
        case 4:
            self.lblsel.text = @"370HP";
            break;
        case 5:
            self.lblsel.text = @"184HP";
            break;
        case 6:
            self.lblsel.text = @"326HP";
            break;
        case 7:
            self.lblsel.text = @"431HP";
            break;
        case 8:
            self.lblsel.text = @"184HP";
            break;
        case 9:
            self.lblsel.text = @"326HP";
            break;
        case 10:
            self.lblsel.text = @"431HP";
            break;
        case 11:
            self.lblsel.text = @"245HP";
            break;
        case 12:
            self.lblsel.text = @"306HP";
            break;
        case 13:
            self.lblsel.text = @"560HP";
            break;
        case 14:
            self.lblsel.text = @"450HP";
            break;
        case 15:
            self.lblsel.text = @"560HP";
            break;
        case 16:
            self.lblsel.text = @"357HP";
            break;
        default:
            break;
    }
}
@end
