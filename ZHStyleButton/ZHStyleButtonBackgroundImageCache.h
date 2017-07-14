//
//  ZHStyleButtonBackgroundImageCache.h
//  ZHStyleButton
//
//  Created by 张行 on 2017/7/13.
//  Copyright © 2017年 张行. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZHStyleButtonBackgroundImageCache : NSObject

/**
 * 单例对象

 @return ZHStyleButtonBackgroundImageCache单例对象
 */
+ (instancetype)shareCache;

/**
 * 根据标识符获取图片

 @param cacheImageIdentifier 图片的标识符
 @return 内存或者本地图片
 */
- (UIImage *)getImageWithIdentifier:(NSString *)cacheImageIdentifier;

/**
 * 根据标识符保存图片

 @param image 图片
 @param cacheImageIdentifier 图片的标识符
 */
- (void)setImage:(UIImage *)image cacheImageIdentifier:(NSString *)cacheImageIdentifier;

@end
