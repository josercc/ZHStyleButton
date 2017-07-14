//
//  ZHStyleButtonType.h
//  ZHStyleButton
//
//  Created by 张行 on 2017/7/13.
//  Copyright © 2017年 张行. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *ZHStyleButtonType类型

 - ZHStyleButtonTypeStyleNormal: 默认类型
 - ZHStyleButtonTypeStyleSelected: 选中类型
 - ZHStyleButtonTypeStyleDisabled: 不可点击类型
 */
typedef NS_ENUM(NSUInteger, ZHStyleButtonTypeStyle) {
    ZHStyleButtonTypeStyleNormal,
    ZHStyleButtonTypeStyleSelected,
    ZHStyleButtonTypeStyleDisabled
};

@interface ZHStyleButtonType<T> : NSObject

/**
 * 默认状态下的值
 */
@property (nonatomic) T normalValue;
/**
 * 选中状态下的值
 */
@property (nonatomic) T selectedValue;
/**
 * 不可点击状态下的值
 */
@property (nonatomic) T disabledValue;

/**
 * 工厂方法创建ZHStyleButtonType

 @param make 配置ZHStyleButtonType
 @return ZHStyleButtonType
 */
+ (instancetype)buttonTypeMake:(void(^)(ZHStyleButtonType<T> *make))make;

/**
 * 根据类型获取对应的值

 @param style 类型
 @return 对应需要的值
 */
- (T)valueWithStyle:(ZHStyleButtonTypeStyle)style;

@end
