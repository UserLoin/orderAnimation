//
//  NSTimer+Addition.h
//  接单动画
//
//  Created by 123456789 on 2018/3/1.
//  Copyright © 2018年 123456789. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (Addition)
+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                      block:(void(^)(void))block
                                    repeats:(BOOL)repeats;
@end
