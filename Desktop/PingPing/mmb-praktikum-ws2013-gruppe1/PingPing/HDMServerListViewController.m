//
//  HDMListViewController.m
//  PingPing
//
//  Created by Lukas Spieß on 24.10.13.
//  Copyright (c) 2013 Marc Stauffer. All rights reserved.
//

#import "HDMServerListViewController.h"
#import "HDMServerDetailViewController.h"
#import "HDMImprintViewController.h"
#import "HDMServerCell.h"

@interface HDMServerListViewController () {
    NSArray *serverList;
}

@end

@implementation HDMServerListViewController

-(IBAction)serverdetails:(id)serverlist{
    HDMServerDetailViewController *serverdetails = [[HDMServerDetailViewController alloc]initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:serverdetails animated:YES];
}

-(IBAction)impressum:(id)imprint{
    HDMImprintViewController *impressum = [[HDMImprintViewController alloc]initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:impressum animated:YES];
}

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

    serverList = [NSArray arrayWithObjects:@"Server1",@"Server2",@"Server3",@"Server4",@"Server5",@"Server6", nil];
    self.title=@"Server List";
    
    UINib *cellNib=[UINib nibWithNibName:@"HDMServerCell" bundle:nil];
    [self.tableView registerNib:cellNib forCellReuseIdentifier:@"serverCell"];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [serverList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HDMServerCell *cell = [tableView dequeueReusableCellWithIdentifier:@"serverCell"];
    
    
    cell.leftLable.text = [serverList objectAtIndex:indexPath.row];
    cell.rightLable.text=@"90%";
    cell.subTitle.text=@"ServerURL";
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    HDMServerDetailViewController *hdmServerDetailViewController = [[HDMServerDetailViewController alloc]initWithNibName:@"HDMServerDetailViewController" bundle:nil];
    
    
    [self.navigationController pushViewController:hdmServerDetailViewController animated:YES];
}
@end
