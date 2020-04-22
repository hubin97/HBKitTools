//
//  NSTimer+HBWeakTimer.m
//  HBKitTools
//
//  Created by Hubin_Huang on 2020/4/22.
//  Copyright © 2020 Hubin_Huang. All rights reserved.
//

#import "NSTimer+HBWeakTimer.h"

// 解决timer循环引用思路 ![](https://tva1.sinaimg.cn/large/007S8ZIlgy1ge2fofy5vvj31ge0jgjtf.jpg)

@interface TimerWeakObject : NSObject // 中间对象

@property (nonatomic, weak) id target; //
@property (nonatomic, assign) SEL selector; //
@property (nonatomic, weak) NSTimer *timer;

- (void)fire:(NSTimer *)timer;
@end

@implementation TimerWeakObject

- (void)fire:(NSTimer *)timer
{
    if (self.target) {

        if ([self.target respondsToSelector:self.selector]) {
            
            #pragma clang diagnostic push
            #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            [self.target performSelector:self.selector withObject:timer.userInfo];
            #pragma clang diagnostic pop
        }
    }
    else {
        [self.timer invalidate];
    }
}

@end

@implementation NSTimer (HBWeakTimer)

+ (NSTimer *)hb_scheduledWeakTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(id)userInfo repeats:(BOOL)yesOrNo {
    
    TimerWeakObject *object = [[TimerWeakObject alloc] init];
    object.target = aTarget;
    object.selector = aSelector;
    object.timer = [NSTimer scheduledTimerWithTimeInterval:ti target:object selector:@selector(fire:) userInfo:userInfo repeats:yesOrNo];
    
    return object.timer;
}


@end
