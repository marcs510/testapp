//
//  HDMServerDetailViewController.h
//  PingPing
//
//  Created by Lukas Spieß on 24.10.13.
//  Copyright (c) 2013 Marc Stauffer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HDMServerDetailViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *servername;
- (IBAction) aliasnamechange:(UITextField*)textField;

- (IBAction)returnKeyButton:(id)sender;


@end


