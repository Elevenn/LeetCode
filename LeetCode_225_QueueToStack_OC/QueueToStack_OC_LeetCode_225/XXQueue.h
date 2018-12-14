//
//  XXQueue.h
//  QueueToStack_OC_LeetCode_225
//
//  Created by 肖鑫 on 2018/12/13.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XXQueue : NSObject

@property (nonatomic, strong) NSMutableArray *array;
@property (nonatomic, assign) NSUInteger queueCapacity;
@property (nonatomic, assign) NSUInteger queueSize;
@property (nonatomic, assign) NSUInteger head;
@property (nonatomic, assign) NSUInteger tail;

- (instancetype)initWithQueueCapacity:(NSUInteger)capacity;

- (BOOL)enqueue:(id)obj;
- (id)dequeue;
- (id)front;
- (BOOL)isEmpty;


@end

NS_ASSUME_NONNULL_END
