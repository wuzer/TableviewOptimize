//
//  RootTableViewCell.m
//  weibo0717
//
//  Created by Jefferson on 16/7/17.
//  Copyright © 2016年 Jefferson. All rights reserved.
//

#import "RootTableViewCell.h"

@implementation RootTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

    for (UIView *view in self.subviews) {
        if ([view isKindOfClass:[UIScrollView class]]) {
            ((UIScrollView *)view).delaysContentTouches = NO;
            break;
        }
    }
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.backgroundView.backgroundColor = [UIColor clearColor];
    self.contentView.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];
    return self;
}

@end
