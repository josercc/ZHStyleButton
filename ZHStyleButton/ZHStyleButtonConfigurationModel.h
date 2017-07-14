//
//  ZHStyleButtonConfigurationModel.h
//  ZHStyleButton
//
//  Created by 张行 on 2017/7/13.
//  Copyright © 2017年 张行. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZHStyleButtonConfigurationModel : NSObject

/**
 * 边框的宽度 默认为0
 */
@property (nonatomic, assign) CGFloat boardWidth;
/**
 * 边框的颜色 默认为背景颜色
 */
@property (nonatomic, strong) UIColor *boardColor;
/**
 * 圆角大小 默认为0
 */
@property (nonatomic, assign) CGFloat cornerRadius;
/**
 * 背景颜色 默认为白色
 */
@property (nonatomic, strong) UIColor *backgroundColor;
/**
 * 字体的颜色 默认黑色
 */
@property (nonatomic, strong) UIColor *textColor;
/**
 * 按钮的尺寸多少
 */
@property (nonatomic, assign) CGSize size;

@end
