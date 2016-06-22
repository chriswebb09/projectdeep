//
//  ProjTableViewController.h
//  ProjectDeep
//
//  Created by Christopher Webb-Orenstein on 6/22/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebRequests.h"
#import "DataClean.h"
#import "DataModel.h"

@interface ProjTableViewController : UITableViewController

@property (strong, nonatomic) WebRequests *request;
@property (strong, nonatomic) DataClean *cleanData;
//@property (strong, nonatomic) NSArray *returnURLS;



@end
