//
//  HDMListViewController.m
//  PingPing
//
//  Created by Lukas Spieß on 24.10.13.
//  Copyright (c) 2013 Marc Stauffer. All rights reserved.
//

#import "HDMServerListViewController.h"
#import "HDMServerDetailViewController.h"

@interface HDMServerListViewController () {
    NSArray *serverList;
}

@end

@implementation HDMServerListViewController

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

    serverList = [NSArray arrayWithObjects:@"Server 1",@"Server 2",@"Server 3",nil];
    self.title = @"Server List";

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [serverList count];
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = serverList[indexPath.row];
    cell.detailTextLabel.text = @"Hier können weitere Details stehen.";
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    HDMServerDetailViewController *hdmServerDetailViewController = [[HDMServerDetailViewController alloc]initWithNibName:@"HDMServerListViewController" bundle:nil];
    
    
    [self.navigationController pushViewController:hdmServerDetailViewController animated:YES];
}
@end
