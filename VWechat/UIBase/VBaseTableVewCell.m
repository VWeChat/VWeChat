//
//  VBaseTableVewCell.m
//  VWechat
//
//  Created by Vicky on 16/3/6.
//  Copyright © 2016年 Jobs. All rights reserved.
//

#import "VBaseTableVewCell.h"

@implementation VBaseTableVewCell

+ (NSString *)getCellIdentifier{
    return NSStringFromClass([self class]);
}

- (id)initWithCellIdentifier:(NSString *)cellId{
    return [self initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
}

+ (id)cellForTableView:(UITableView *)tableView{
    NSString *cellId = [self getCellIdentifier];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell =  [[self alloc] initWithCellIdentifier:cellId];
    }
    return cell;
}

+ (id)cellForTableView:(UITableView *)tableView cellIdentifier:(NSString *)cellId{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[self alloc] initWithCellIdentifier:cellId];
    }
    return cell;
}


@end
