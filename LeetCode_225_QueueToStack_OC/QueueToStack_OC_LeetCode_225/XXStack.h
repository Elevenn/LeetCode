//
//  XXStack.h
//  QueueToStack_OC_LeetCode_225
//
//  Created by 肖鑫 on 2018/12/13.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class XXQueue;
@interface XXStack : NSObject
//push(x) -- 元素 x 入栈
//pop() -- 移除栈顶元素
//top() -- 获取栈顶元素
//empty() -- 返回栈是否为空

@property (nonatomic, strong) XXQueue *queue;

- (instancetype)initWithStackCapacity:(NSUInteger)capacity;

- (BOOL)push:(id)obj;
- (id)pop;
- (id)top;
- (BOOL)empty;

@end

NS_ASSUME_NONNULL_END
