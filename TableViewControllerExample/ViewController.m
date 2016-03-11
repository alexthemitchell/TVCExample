//
//  ViewController.m
//  TableViewControllerExample
//
//  Created by Alex Mitchell on 3/10/16.
//  Copyright © 2016 Alex Mitchell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
  NSArray<NSString *> *attendees;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  attendees = @[
    @"Alex Mitchell",
    @"Steve Jobs",
    @"Joe the Plumber"
  ];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return attendees.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
  cell.textLabel.text = attendees[indexPath.row];
  
  return cell;
}

@end






















