//
//  HDMServerDetailViewController.m
//  PingPing
//
//  Created by Lukas Spieß on 24.10.13.
//  Copyright (c) 2013 Marc Stauffer. All rights reserved.
//

#import "HDMServerDetailViewController.h"

@interface HDMServerDetailViewController ()

@end

@implementation HDMServerDetailViewController

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
    
    self.title = @"Serveralias";
    
    [self.servername addTarget:self action:@selector(aliasnamechange:) forControlEvents:UIControlEventAllEditingEvents];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)aliasnamechange:(UITextField *)textField{
    self.title = textField.text;
}

- (IBAction)returnKeyButton:(id)sender {
    [sender resignFirstResponder];
}

@end
