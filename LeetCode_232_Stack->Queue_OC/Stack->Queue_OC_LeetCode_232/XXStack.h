//
//  XXStack.h
//  Stack->Queue_OC_LeetCode_232
//
//  Created by 肖鑫 on 2018/12/13.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XXStack : NSObject

@property (nonatomic, strong) NSMutableArray *array;    //!<    顺序栈的数组
@property (nonatomic, assign) NSUInteger count;         //!<    栈中 push 进的数据个数 / 栈顶指针
@property (nonatomic, assign) NSUInteger stackCapacity; //!<    栈的容量

- (instancetype)initWithStackCapacity:(NSUInteger)capacity;

- (BOOL)push:(id)obj;
- (id)peek;
- (id)pop;

@end

NS_ASSUME_NONNULL_END
