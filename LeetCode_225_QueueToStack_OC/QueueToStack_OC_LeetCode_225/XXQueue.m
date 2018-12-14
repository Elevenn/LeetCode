//
//  XXQueue.m
//  QueueToStack_OC_LeetCode_225
//
//  Created by 肖鑫 on 2018/12/13.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import "XXQueue.h"

@implementation XXQueue

- (instancetype)initWithQueueCapacity:(NSUInteger)capacity {
    if (self = [super init]) {
        _queueCapacity = capacity;
        _array = [NSMutableArray arrayWithCapacity:capacity];
        _queueSize = 0;
        _head = 0;
        _tail = 0;
        
        //  开辟存储空间
        for (int i = 0; i < capacity; ++ i) {
            [_array addObject:@(-1)];
        }
    }
    
    return self;
}

- (BOOL)enqueue:(id)obj {
    if (self.queueCapacity == self.queueSize) {
        NSLog(@"队已满");
        return NO;
    }
    
    if ((self.tail == self.queueCapacity) && (self.head != 0)) {
        //  数据搬移操作
        for (int i = 0; i < self.queueSize; ++ i) {
            self.array[i] = self.array[self.head + i];
        }
        self.head = 0;
        self.tail = self.queueSize;
    }
    
    self.array[self.tail] = obj;
    ++ self.queueSize;
    ++ self.tail;
    
    return YES;
}

- (id)dequeue {
    if (self.tail == self.head) {
        NSLog(@"队为空");
        return nil;
    }
    
    id tmp = self.array[self.head];
    -- self.queueSize;
    ++ self.head;
    
    return tmp;
}

- (id)front {
    if (self.tail == self.head) {
        NSLog(@"队为空");
        return nil;
    }
    
    id tmp = self.array[self.head];
    return tmp;
}

- (BOOL)isEmpty {
    if (self.tail == self.head) {
        NSLog(@"队为空");
        return YES;
    }
    
    return NO;
}


@end
