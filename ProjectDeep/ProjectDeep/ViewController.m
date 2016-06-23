//
//  ViewController.m
//  ProjectDeep
//
//  Created by Christopher Webb-Orenstein on 6/22/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

#import "ViewController.h"
#import "QuartzCore/QuartzCore.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setButtonProperties];
    // Do any additional setup after loading the view, typically from a nib.
    
}



-(void)setButtonProperties {
    [[self.submitButton layer] setBorderWidth:2.0f];
    self.submitButton.layer.cornerRadius = 6;
    self.submitButton.layer.borderColor =[UIColor colorWithRed:79.0/255.0f green:124.0/255.0f blue:172.0/255.0f alpha:1.0].CGColor;
    
    //    CGRect frameRect = self.webRequestTextField.frame;
    //    frameRect.size.height = 1000;
    //    self.webRequestTextField.frame = frameRect;
}

-(void)viewWillAppear:(BOOL)animated {
//    self.submitButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    self.submitButton.layer.borderWidth = 1.0f;
//    self.submitButton.layer.borderColor = [UIColor blueColor].CGColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ProjTableViewController *projTableVC = segue.destinationViewController;
    projTableVC.sentURL = self.webRequestTextField.text;
}

@end
