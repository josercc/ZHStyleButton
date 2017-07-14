//
//  ZHStyleButton.h
//  ZHStyleButton
//
//  Created by 张行 on 2017/7/13.
//  Copyright © 2017年 张行. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZHStyleButtonType.h"
#import "ZHStyleButtonConfigurationModel.h"

@protocol ZHStyleButtonProtocol <NSObject>
@optional
/**
 * 配置按钮的变宽宽度 不实现默认为0

 @return 边框的宽度
 */
- (ZHStyleButtonType<NSNumber *> *)zh_boardWidth;
/**
 * 配置按钮边框的颜色 不实现默认为背景颜色

 @return 边框颜色
 */
- (ZHStyleButtonType<UIColor *> *)zh_boardColor;
/**
 * 配置按钮的圆角大小 不实现默认为0

 @return 圆角的大小
 */
- (ZHStyleButtonType<NSNumber *> *)zh_cornerRadius;
/**
 * 配置按钮背景颜色 不实现默认为白色

 @return 背景颜色
 */
- (ZHStyleButtonType<UIColor *> *)zh_backgroundColor;
/**
 * 配置按钮的字体颜色 不实现默认为黑色

 @return 字体颜色
 */
- (ZHStyleButtonType<UIColor *> *)zh_textColor;
@end

/**
 * 请继承ZHStyleButton 实现ZHStyleButtonProtocol协议
 */
@interface ZHStyleButton : UIButton

@end
