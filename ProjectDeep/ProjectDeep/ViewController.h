//
//  ViewController.h
//  ProjectDeep
//
//  Created by Christopher Webb-Orenstein on 6/22/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProjTableViewController.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *inputLabel;
@property (weak, nonatomic) IBOutlet UITextField *webRequestTextField;
@property (weak, nonatomic) IBOutlet UIButton *submitButton;

@end

