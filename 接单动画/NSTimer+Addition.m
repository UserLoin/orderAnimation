//
//  NSTimer+Addition.m
//  接单动画
//
//  Created by 123456789 on 2018/3/1.
//  Copyright © 2018年 123456789. All rights reserved.
//

#import "NSTimer+Addition.h"

@implementation NSTimer (Addition)
+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                      block:(void(^)(void))block
                                    repeats:(BOOL)repeats{
    return [self scheduledTimerWithTimeInterval:interval target:self selector:@selector(blockInvoke:) userInfo:[block copy] repeats:repeats];
}
+ (void)blockInvoke:(NSTimer *)timer {
    void (^ block)(void) = timer.userInfo;
    if (block) {
        block();
    }
}
@end
