//
//  HDMListViewController.h
//  PingPing
//
//  Created by Lukas Spieß on 24.10.13.
//  Copyright (c) 2013 Marc Stauffer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HDMServerListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

-(IBAction)serverdetails:(id)serverlist;
-(IBAction)impressum:(id)imprint;


@end
