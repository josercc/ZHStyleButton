//
//  ZHStyleButtonBackgroundImageCache.m
//  ZHStyleButton
//
//  Created by 张行 on 2017/7/13.
//  Copyright © 2017年 张行. All rights reserved.
//

#import "ZHStyleButtonBackgroundImageCache.h"

@implementation ZHStyleButtonBackgroundImageCache {
    NSCache *_memoryCache;
}

/**
 * 单例对象
 
 @return ZHStyleButtonBackgroundImageCache单例对象
 */
+ (instancetype)shareCache {
    static ZHStyleButtonBackgroundImageCache *cache;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        cache = [[ZHStyleButtonBackgroundImageCache alloc] init];
    });
    return cache;
}

- (instancetype)init {
    if (self = [super init]) {
        _memoryCache = [[NSCache alloc] init];
        _memoryCache.countLimit = 100;
        
    }
    return self;
}

/**
 * 根据标识符获取图片
 
 @param cacheImageIdentifier 图片的标识符
 @return 内存或者本地图片
 */
- (UIImage *)getImageWithIdentifier:(NSString *)cacheImageIdentifier {
    UIImage *memoryImage = [self getImageInMemoryWithIdentifier:cacheImageIdentifier];
    if (memoryImage) {
        return memoryImage;
    }
    UIImage *daskImage = [self getImageInDaskWithIdentifier:cacheImageIdentifier];
    if (daskImage) {
        [self setImageInMemory:daskImage cacheImageIdentifier:cacheImageIdentifier];
    }
    return [self getImageInDaskWithIdentifier:cacheImageIdentifier];
}

/**
 * 根据标识符保存图片
 
 @param image 图片
 @param cacheImageIdentifier 图片的标识符
 */
- (void)setImage:(UIImage *)image cacheImageIdentifier:(NSString *)cacheImageIdentifier {
    [self setImageInMemory:image cacheImageIdentifier:cacheImageIdentifier];
    [self setImageInDask:image cacheImageIdentifier:cacheImageIdentifier];
}

/**
 * 保存图片到内存里面

 @param image 图片
 @param cacheImageIdentifier 图片的标识符
 */
- (void)setImageInMemory:(UIImage *)image cacheImageIdentifier:(NSString *)cacheImageIdentifier {
    [_memoryCache setObject:image forKey:cacheImageIdentifier cost:1];
}

/**
 * 保存图片到本地

 @param image 图片
 @param cacheImageIdentifier 图片的标识符
 */
- (void)setImageInDask:(UIImage *)image cacheImageIdentifier:(NSString *)cacheImageIdentifier {
    [UIImagePNGRepresentation(image) writeToFile:[self daskImagePath:cacheImageIdentifier] atomically:YES];
}

/**
 * 从内存获取图片

 @param cacheImageIdentifier 标识符
 @return 内存的图片
 */
- (UIImage *)getImageInMemoryWithIdentifier:(NSString *)cacheImageIdentifier {
    return [_memoryCache objectForKey:cacheImageIdentifier];
}

/**
 * 从磁盘获取图片

 @param cacheImageIdentifier 标识符
 @return 磁盘的图片
 */
- (UIImage *)getImageInDaskWithIdentifier:(NSString *)cacheImageIdentifier {
    return [[UIImage alloc] initWithContentsOfFile:[self daskImagePath:cacheImageIdentifier]];
}

/**
 * 获取保存本地的图片路径

 @param identifier 标识符
 @return 本地图片的路径
 */
- (NSString *)daskImagePath:(NSString *)identifier {
    return [NSString stringWithFormat:@"%@/Library/Caches/%@",NSHomeDirectory(),identifier];
}

@end
