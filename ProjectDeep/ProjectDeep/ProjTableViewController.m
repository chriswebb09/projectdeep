//
//  ProjTableViewController.m
//  ProjectDeep
//
//  Created by Christopher Webb-Orenstein on 6/22/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

#import "ProjTableViewController.h"


@implementation ProjTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.request = [[WebRequests alloc]initWithURL:self.sentURL];
    self.cleanData = [[DataClean alloc]init];
    self.cleanData.urls = [self.cleanData returnFormattedDataFromStringOfData:[self.request getWebDataFromURL]];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.cleanData.urls count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"webCell" forIndexPath:indexPath];
    cell.textLabel.text = self.cleanData.urls[indexPath.row];
    // Configure the cell...
    
    return cell;
}


@end
