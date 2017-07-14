//
//  ZHStyleButtonType.m
//  ZHStyleButton
//
//  Created by 张行 on 2017/7/13.
//  Copyright © 2017年 张行. All rights reserved.
//

#import "ZHStyleButtonType.h"

@implementation ZHStyleButtonType

+ (instancetype)buttonTypeMake:(void (^)(ZHStyleButtonType<id> *))make {
    ZHStyleButtonType *type = [[ZHStyleButtonType alloc] init];
    if (make) {
        make(type);
    }
    return type;
}

- (id)valueWithStyle:(ZHStyleButtonTypeStyle)style {
    switch (style) {
        case ZHStyleButtonTypeStyleNormal: {
            return self.normalValue;
        }
            break;
        case ZHStyleButtonTypeStyleSelected: {
            return self.selectedValue;
        }
            break;
        case ZHStyleButtonTypeStyleDisabled: {
            return self.disabledValue;
        }
            break;
    }
}

@end
