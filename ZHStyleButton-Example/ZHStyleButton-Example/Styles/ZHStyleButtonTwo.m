//
//  ZHStyleButtonTwo.m
//  ZHStyleButton-Example
//
//  Created by 张行 on 2017/7/14.
//  Copyright © 2017年 张行. All rights reserved.
//

#import "ZHStyleButtonTwo.h"

@implementation ZHStyleButtonTwo

-(ZHStyleButtonType<NSNumber *> *)zh_boardWidth {
    return [ZHStyleButtonType<NSNumber *> buttonTypeMake:^(ZHStyleButtonType<NSNumber *> *make) {
        make.normalValue = @(1);
        make.selectedValue = @(0);
        make.disabledValue = @(0);
    }];
}

- (ZHStyleButtonType<UIColor *> *)zh_boardColor {
    return [ZHStyleButtonType<UIColor *> buttonTypeMake:^(ZHStyleButtonType<UIColor *> *make) {
        make.normalValue = [UIColor colorWithRed:0.863 green:0.863 blue:0.863 alpha:1];
        make.selectedValue = nil;
        make.disabledValue = nil;
    }];
}

- (ZHStyleButtonType<NSNumber *> *)zh_cornerRadius {
    return [ZHStyleButtonType<NSNumber *> buttonTypeMake:^(ZHStyleButtonType<NSNumber *> *make) {
        make.normalValue = @(4);
        make.selectedValue = @(4);
        make.disabledValue = @(4);
    }];
}

- (ZHStyleButtonType<UIColor *> *)zh_textColor {
    return [ZHStyleButtonType<UIColor *> buttonTypeMake:^(ZHStyleButtonType<UIColor *> *make) {
        make.normalValue = [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1];
        make.selectedValue = [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1];
        make.disabledValue = [UIColor colorWithRed:0.749 green:0.749 blue:0.749 alpha:1];
    }];
}

- (ZHStyleButtonType<UIColor *> *)zh_backgroundColor {
    return [ZHStyleButtonType<UIColor *> buttonTypeMake:^(ZHStyleButtonType<UIColor *> *make) {
        make.normalValue = [UIColor whiteColor];
        make.selectedValue = [UIColor colorWithRed:0.804 green:0.804 blue:0.804 alpha:1];
        make.disabledValue = [UIColor colorWithRed:0.933 green:0.933 blue:0.933 alpha:1];
    }];
}

@end
