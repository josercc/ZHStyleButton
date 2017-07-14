//
//  ZHStyleButtonBackgroundImageManager.m
//  ZHStyleButton
//
//  Created by 张行 on 2017/7/13.
//  Copyright © 2017年 张行. All rights reserved.
//

#import "ZHStyleButtonBackgroundImageManager.h"
#import "ZHStyleButtonBackgroundImageCache.h"

@implementation ZHStyleButtonBackgroundImageManager

+ (UIImage *)backgroundImageWithModel:(ZHStyleButtonConfigurationModel *)model {
    NSString *cacheImageIdentifier = [NSString stringWithFormat:@"boardWidth(%@)-boardColor(%@)-cornerRadius(%@)-backgroundColor(%@)-textColor(%@)-size(%@)}",@(model.boardWidth),@(model.boardColor.hash),@(model.cornerRadius),@(model.backgroundColor.hash),@(model.textColor.hash),NSStringFromCGSize(model.size)];
    UIImage *backgroundImage = [[ZHStyleButtonBackgroundImageCache shareCache] getImageWithIdentifier:cacheImageIdentifier];
    if (backgroundImage) {
        return backgroundImage;
    }
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, model.size.width, model.size.height)];
    btn.layer.masksToBounds = YES;
    btn.layer.cornerRadius = model.cornerRadius;
    btn.layer.borderWidth = model.boardWidth;
    btn.layer.borderColor = model.boardColor.CGColor;
    btn.backgroundColor = model.backgroundColor;
    UIGraphicsBeginImageContextWithOptions(model.size, NO, [UIScreen mainScreen].scale);
    [btn.layer renderInContext:UIGraphicsGetCurrentContext()];
    backgroundImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [[ZHStyleButtonBackgroundImageCache shareCache] setImage:backgroundImage cacheImageIdentifier:cacheImageIdentifier];
    return backgroundImage;
}

@end
