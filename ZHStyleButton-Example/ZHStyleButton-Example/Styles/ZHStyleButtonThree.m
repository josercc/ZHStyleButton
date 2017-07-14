//
//  ZHStyleButtonThree.m
//  ZHStyleButton-Example
//
//  Created by 张行 on 2017/7/14.
//  Copyright © 2017年 张行. All rights reserved.
//

#import "ZHStyleButtonThree.h"

@implementation ZHStyleButtonThree

-(ZHStyleButtonType<NSNumber *> *)zh_boardWidth {
    return [ZHStyleButtonType<NSNumber *> buttonTypeMake:^(ZHStyleButtonType<NSNumber *> *make) {
        make.normalValue = @(1);
        make.selectedValue = @(1);
        make.disabledValue = @(1);
    }];
}

- (ZHStyleButtonType<UIColor *> *)zh_boardColor {
    return [ZHStyleButtonType<UIColor *> buttonTypeMake:^(ZHStyleButtonType<UIColor *> *make) {
        make.normalValue = [UIColor colorWithRed:1 green:0.541 blue:0 alpha:1];
        make.selectedValue = [UIColor colorWithRed:1 green:0.541 blue:0 alpha:1];
        make.disabledValue = [UIColor colorWithRed:0.894 green:0.894 blue:0.894 alpha:1];
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
        make.normalValue = [UIColor colorWithRed:1 green:0.541 blue:0 alpha:1];
        make.selectedValue = [UIColor colorWithRed:1 green:0.541 blue:0 alpha:1];
        make.disabledValue = [UIColor colorWithRed:0.749 green:0.749 blue:0.749 alpha:1];
    }];
}

- (ZHStyleButtonType<UIColor *> *)zh_backgroundColor {
    return [ZHStyleButtonType<UIColor *> buttonTypeMake:^(ZHStyleButtonType<UIColor *> *make) {
        make.normalValue = [UIColor whiteColor];
        make.selectedValue = [UIColor colorWithRed:0.996 green:0.929 blue:0.851 alpha:1];
        make.disabledValue = [UIColor whiteColor];
    }];
}


@end
