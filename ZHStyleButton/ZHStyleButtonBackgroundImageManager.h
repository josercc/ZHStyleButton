//
//  ZHStyleButtonBackgroundImageManager.h
//  ZHStyleButton
//
//  Created by 张行 on 2017/7/13.
//  Copyright © 2017年 张行. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZHStyleButtonConfigurationModel.h"

@interface ZHStyleButtonBackgroundImageManager : NSObject

+ (UIImage *)backgroundImageWithModel:(ZHStyleButtonConfigurationModel *)model;

@end
