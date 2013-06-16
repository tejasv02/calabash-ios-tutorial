//
//  MasterViewController.h
//  testprod
//
//  Created by Tejasvi Manmatha on 05/05/2013.
//  Copyright (c) 2013 home. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
