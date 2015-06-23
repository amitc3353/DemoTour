//
//  ViewController.m
//  DemoTour
//
//  Created by Amit Chandel on 6/22/15.
//  Copyright (c) 2015 Amit Chandel. All rights reserved.
//

#import "DemoListViewController.h"

@interface DemoListViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *demoListArray;
@end

@implementation DemoListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.demoListArray = [NSMutableArray arrayWithObjects:@"CollectioView Demo",@"TabBar Demo",@"PageviewController Demo",@"SplitViewController Demo", nil];
}


# pragma mark - UITableView DataSource Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.demoListArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *demoListIdentifier = @"DemoListCell";
    UITableViewCell *demoListCell = [tableView dequeueReusableCellWithIdentifier:demoListIdentifier];
    
    if(demoListCell == nil) {
        demoListCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:demoListIdentifier];
    }
    
    demoListCell.textLabel.text = [self.demoListArray objectAtIndex:indexPath.row];
    
    return demoListCell;
}

@end
