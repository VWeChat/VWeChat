//
//  VBaseTableVewCell.h
//  VWechat
//
//  Created by Vicky on 16/3/6.
//  Copyright © 2016年 Jobs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"
@interface VBaseTableVewCell : UITableViewCell

+ (id)cellForTableView:(UITableView *)tableView;
+ (id)cellForTableView:(UITableView *)tableView cellIdentifier:(NSString *)cellId;

@end
