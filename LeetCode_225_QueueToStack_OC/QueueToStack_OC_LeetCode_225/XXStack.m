//
//  XXStack.m
//  QueueToStack_OC_LeetCode_225
//
//  Created by 肖鑫 on 2018/12/13.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import "XXStack.h"
#import "XXQueue.h"

@implementation XXStack

- (instancetype)initWithStackCapacity:(NSUInteger)capacity {
    if (self = [super init]) {
        _queue = [[XXQueue alloc] initWithQueueCapacity:capacity];
    }
    
    return self;
}

- (BOOL)push:(id)obj {
    [self.queue enqueue:obj];
    
    for (int i = 1; i < self.queue.queueSize; ++ i) {
        [self.queue enqueue:[self.queue dequeue]];
    }
    
    return YES;
}

- (id)pop {
    id tmp = [self.queue dequeue];
    
    return tmp;
}

- (id)top {
    id tmp = [self.queue front];
    
    NSLog(@"top -> %@", tmp);
    
    return tmp;
}

- (BOOL)empty {
    return [self.queue isEmpty];
}


@end
