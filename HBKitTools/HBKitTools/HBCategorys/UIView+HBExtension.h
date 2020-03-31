//
//  UIView+HBExtension.h
//  CarInsureHybird
//
//  Created by Hubin_Huang on 2019/7/25.
//  Copyright © 2018年 平安产险. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (HBExtension)

/// 获取当前视图所在控制器
- (nullable UIViewController *)hb_viewController;

/// 计算文字长度
/// @param content 文本内容
/// @param font 字体
- (CGFloat )hb_widthOfText:(NSString *)content fontSize:(CGFloat)font;

@end

NS_ASSUME_NONNULL_END
