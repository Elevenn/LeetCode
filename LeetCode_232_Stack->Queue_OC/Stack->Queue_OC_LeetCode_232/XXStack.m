//
//  XXStack.m
//  Stack->Queue_OC_LeetCode_232
//
//  Created by 肖鑫 on 2018/12/13.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import "XXStack.h"

@implementation XXStack

- (instancetype)initWithStackCapacity:(NSUInteger)capacity {
    if (self = [super init]) {
        _stackCapacity = capacity;
        _array = [NSMutableArray arrayWithCapacity:_stackCapacity];
        _count = 0;
        
        for (int i = 0; i < _stackCapacity; ++ i) {
            [_array addObject:@(-1)];
        }
    }
    
    return self;
}

- (BOOL)push:(id)obj {
    if (self.count == self.stackCapacity) {
        NSLog(@"栈已满");
        return NO;
    }
    
    //[self.array addObject:obj];
    self.array[self.count] = obj;
    
    ++ self.count;
    
    return YES;
}

- (id)peek {
    return self.array[self.count - 1];
}

- (id)pop {
    if (self.count == 0) {
        NSLog(@"栈已空");
        return nil;
    }
    
    id tmp = self.array[self.count - 1];
    -- self.count;
    return tmp;
}

@end
