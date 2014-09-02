//
//  FADViewController.m
//  FbAPIDemo
//
//  Created by Socoboy on 9/1/14.
//  Copyright (c) 2014 Socoboy. All rights reserved.
//

#import "FADViewController.h"
#import <FacebookSDK/FacebookSDK.h>

@interface FADViewController ()

- (IBAction)bundleIdAction:(id)sender;

@end

@implementation FADViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [FBLoginView class];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)bundleIdAction:(id)sender {
    UIAlertView *dialog = [[UIAlertView alloc] initWithTitle:@""
                                                     message:[NSString stringWithFormat:@"Your app's Bundle ID: %@", [[NSBundle mainBundle] bundleIdentifier]]
                                                    delegate:nil
                                           cancelButtonTitle:@"OK"
                                           otherButtonTitles:nil];
    [dialog show];
}


@end
