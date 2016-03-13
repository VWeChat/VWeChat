//
//  VDiscoverListCell.m
//  VWechat
//
//  Created by Vicky on 16/3/6.
//  Copyright © 2016年 Jobs. All rights reserved.
//

#import "VDiscoverListCell.h"

@interface VDiscoverListCell ()
@property (strong, nonatomic) UIImageView *iconImageView;
@property (strong, nonatomic) UILabel *nameLabel;

@end

@implementation VDiscoverListCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.iconImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
        _iconImageView.backgroundColor =[UIColor redColor];
        [self.contentView addSubview:_iconImageView];
        
        
        self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 120, 20)];
        _nameLabel.textAlignment = NSTextAlignmentLeft;
        _nameLabel.textColor = [UIColor darkGrayColor];
        _nameLabel.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:_nameLabel];
        
    }
    return self ;
}

- (void)layoutSubviews{
    [super layoutSubviews];
//    [_iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.width
//    }];
    
}


@end
