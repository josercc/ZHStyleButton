//
//  ZHStyleButtonConfigurationModel.m
//  ZHStyleButton
//
//  Created by 张行 on 2017/7/13.
//  Copyright © 2017年 张行. All rights reserved.
//

#import "ZHStyleButtonConfigurationModel.h"

@implementation ZHStyleButtonConfigurationModel

- (instancetype)init {
    if (self = [super init]) {
        _backgroundColor = [UIColor whiteColor];
        _textColor = [UIColor blackColor];
    }
    return self;
}

- (UIColor *)boardColor {
    return _boardColor ? _boardColor : _backgroundColor;
}

@end
