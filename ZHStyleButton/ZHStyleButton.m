//
//  ZHStyleButton.m
//  ZHStyleButton
//
//  Created by 张行 on 2017/7/13.
//  Copyright © 2017年 张行. All rights reserved.
//

#import "ZHStyleButton.h"
#import "ZHStyleButtonBackgroundImageManager.h"

@implementation ZHStyleButton {
    CGSize _oldSize;
    ZHStyleButtonType<NSNumber *> *_zhBoardWidth;
    ZHStyleButtonType<UIColor *> *_zhBoardColor;
    ZHStyleButtonType<NSNumber *> *_zhCornerRadius;
    ZHStyleButtonType<UIColor *> *_zhBackgroundColor;
    ZHStyleButtonType<UIColor *> *_zhTextColor;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        _oldSize = CGSizeZero;
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    if (!CGSizeEqualToSize(_oldSize, self.bounds.size)) {
        _oldSize = self.bounds.size;
        [self reloadStyleButton];
    }
}

- (void)setUserInteractionEnabled:(BOOL)userInteractionEnabled {
    [super setUserInteractionEnabled:userInteractionEnabled];
    [super setEnabled:userInteractionEnabled];
}

- (void)reloadStyleButton {
    NSAssert(![self isMemberOfClass:[ZHStyleButton class]], @"ZHStyleButton不能直接使用");
    NSAssert([self isKindOfClass:[ZHStyleButton class]], @"必须使用ZHStyleButton的子类");
    NSAssert([self conformsToProtocol:@protocol(ZHStyleButtonProtocol)], @"ZHStyleButton的子类必须实现ZHStyleButtonProtocol协议");
    [self setStyleButtonType];
    NSArray<NSNumber *> *styles = @[
                                    @(ZHStyleButtonTypeStyleNormal),
                                    @(ZHStyleButtonTypeStyleSelected),
                                    @(ZHStyleButtonTypeStyleDisabled)
                                    ];
    [styles enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        ZHStyleButtonTypeStyle style = (ZHStyleButtonTypeStyle)[obj integerValue];
        ZHStyleButtonConfigurationModel *model = [[ZHStyleButtonConfigurationModel alloc] init];
        model.size = self.bounds.size;
        [self setValueWithStyle:style model:model];
        UIImage *backgroundImage = [ZHStyleButtonBackgroundImageManager backgroundImageWithModel:model];
        switch (style) {
            case ZHStyleButtonTypeStyleNormal: {
                [self setTitleColor:model.textColor forState:UIControlStateNormal];
                [self setBackgroundImage:backgroundImage forState:UIControlStateNormal];
            }
                break;
            case ZHStyleButtonTypeStyleSelected: {
                [self setTitleColor:model.textColor forState:UIControlStateHighlighted];
                [self setBackgroundImage:backgroundImage forState:UIControlStateHighlighted];
            }
                break;
            case ZHStyleButtonTypeStyleDisabled: {
                [self setTitleColor:model.textColor forState:UIControlStateDisabled];
                [self setBackgroundImage:backgroundImage forState:UIControlStateDisabled];
            }
                break;
        }
    }];
}

- (void)setStyleButtonType {
    id<ZHStyleButtonProtocol> protocol = (id<ZHStyleButtonProtocol>)self;
    if ([protocol respondsToSelector:@selector(zh_boardWidth)]) {
        _zhBoardWidth = [protocol zh_boardWidth];
    }
    if ([protocol respondsToSelector:@selector(zh_boardColor)]) {
        _zhBoardColor = [protocol zh_boardColor];
    }
    if ([protocol respondsToSelector:@selector(zh_cornerRadius)]) {
        _zhCornerRadius = [protocol zh_cornerRadius];
    }
    if ([protocol respondsToSelector:@selector(zh_backgroundColor)]) {
        _zhBackgroundColor = [protocol zh_backgroundColor];
    }
    if ([protocol respondsToSelector:@selector(zh_textColor)]) {
        _zhTextColor = [protocol zh_textColor];
    }
    
}

- (void)setValueWithStyle:(ZHStyleButtonTypeStyle)style model:(ZHStyleButtonConfigurationModel *)model {
    if (_zhBoardWidth) {
        model.boardWidth = [[_zhBoardWidth valueWithStyle:style] floatValue];
    }
    if (_zhBoardColor) {
        model.boardColor = [_zhBoardColor valueWithStyle:style];
    }
    if (_zhCornerRadius) {
        model.cornerRadius = [[_zhCornerRadius valueWithStyle:style] floatValue];
    }
    if (_zhBackgroundColor) {
        model.backgroundColor = [_zhBackgroundColor valueWithStyle:style];
    }
    if (_zhTextColor) {
        model.textColor = [_zhTextColor valueWithStyle:style];
    }
    
}

@end
