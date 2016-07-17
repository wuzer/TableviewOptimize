//
//  RootTableView.m
//  weibo0717
//
//  Created by Jefferson on 16/7/17.
//  Copyright © 2016年 Jefferson. All rights reserved.
//

#import "RootTableView.h"

@implementation RootTableView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    self.delaysContentTouches = NO;
    self.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    UIView *warpView = self.subviews.firstObject;
    
    if (warpView && [NSStringFromClass(warpView.class) hasPrefix:@"WrapperView"]) {
        for (UIGestureRecognizer *gesture in warpView.gestureRecognizers) {
            if ([NSStringFromClass(gesture.class) containsString:@"DelayedTouchesBegan"]) {
                gesture.enabled = NO;
                break;
            }
        }
    }
    
    return self;
}

- (BOOL)touchesShouldCancelInContentView:(UIView *)view {

    if ([view isKindOfClass:[UIControl class]]) {
        return YES;
    }
    
    return [super touchesShouldCancelInContentView:view];
}


@end
