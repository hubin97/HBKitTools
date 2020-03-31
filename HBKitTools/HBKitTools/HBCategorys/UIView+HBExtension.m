//
//  UIView+HBExtension.m
//  CarInsureHybird
//
//  Created by Hubin_Huang on 2019/7/25.
//  Copyright © 2018年 平安产险. All rights reserved.
//

#import "UIView+HBExtension.h"

@implementation UIView (HBExtension)

- (nullable UIViewController *)hb_viewController
{
    for (UIView *next = [self superview]; next; next = next.superview)
    {
        UIResponder *nextResponder = [next nextResponder];
        
        if ([nextResponder isKindOfClass:[UIViewController class]])
        {
            return (UIViewController *)nextResponder;
        }
    }
    return nil;
}


- (CGFloat )hb_widthOfText:(NSString *)content fontSize:(CGFloat)font
{
    CGSize size = [content sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:font], NSFontAttributeName, nil]];
    return size.width;
}

@end
