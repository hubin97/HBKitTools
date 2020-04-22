//
//  NSTimer+HBWeakTimer.h
//  HBKitTools
//
//  Created by Hubin_Huang on 2020/4/22.
//  Copyright © 2020 Hubin_Huang. All rights reserved.
//

// 解决timer循环引用

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTimer (HBWeakTimer)

+ (NSTimer *)hb_scheduledWeakTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(id)userInfo repeats:(BOOL)yesOrNo;

@end

NS_ASSUME_NONNULL_END
