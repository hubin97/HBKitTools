//
//  UILabel+HBAlignment.m
//  CarInsureHybird
//
//  Created by Hubin_Huang on 2019/7/25.
//  Copyright © 2018年 平安产险. All rights reserved.
//

#import "UILabel+HBAlignment.h"
#import <CoreText/CoreText.h>

@implementation UILabel (HBAlignment)

- (void)hb_alignmentMethodLeftAndRight {
    [self layoutIfNeeded];
    
    CGSize textSize = [self.text boundingRectWithSize:CGSizeMake(self.frame.size.width, MAXFLOAT)
                                              options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesFontLeading
                                           attributes:@{NSFontAttributeName :self.font}
                                              context:nil].size;
    
    //计算字间距
    CGFloat margin = (self.frame.size.width - textSize.width) / (self.text.length - 1);
    NSNumber *number = [NSNumber numberWithFloat:margin];
    
    //修改默认字间距离
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc]initWithString:self.text];
    [attributeString addAttribute:(id)kCTKernAttributeName value:number range:NSMakeRange(0, self.text.length -1 )];
    self.attributedText = attributeString;
}

@end
