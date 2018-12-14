//
//  XXQueue.m
//  Stack->Queue_OC_LeetCode_232
//
//  Created by 肖鑫 on 2018/12/13.
//  Copyright © 2018 Eleven. All rights reserved.
//

/** 思路
 *  1, 创建两个栈 input stack、 output stack
 *  2. push 操作走 input
 *  3. pop peek 走 output
 *  4. 每次要 pop peek 时, 把 input 里的数据 pop 到 output 里, output 里的栈顶就是 pop peek 需要的数据
 */

#import "XXQueue.h"
#import "XXStack.h"

@implementation XXQueue

- (instancetype)init {
    if (self = [super init]) {
        _inputS  = [[XXStack alloc] initWithStackCapacity:20.f];
        _outputS = [[XXStack alloc] initWithStackCapacity:20.f];
    }
    
    return self;
}

- (BOOL)push:(id)obj {
    if (self.inputS.count == self.inputS.stackCapacity) {
        NSLog(@"栈已满");
        return NO;
    }
    
    [self.inputS push:obj];
    
    return YES;
}

- (id)peek {
    if ((self.outputS.count == 0) && (self.inputS.count == 0)) {
        NSLog(@"栈为空");
        return nil;
    }
    
    if (self.outputS.count == 0) {
        //  当栈 output 里为零 则把 input 里的数据 pop 进来
        while (self.inputS.count != 0) {
            [self.outputS push:[self.inputS pop]];
        }
    }
    
    id tmp = [self.outputS peek];
    return tmp;
}

- (id)pop {
    if ((self.outputS.count == 0) && (self.inputS.count == 0)) {
        NSLog(@"栈为空");
        return nil;
    }
    
    if (self.outputS.count == 0) {
        //  当栈 output 里为零 则把 input 里的数据 pop 进来
        while (self.inputS.count != 0) {
            [self.outputS push:[self.inputS pop]];
        }
    }
    
    id tmp = [self.outputS pop];
    return tmp;
}

- (BOOL)isEmpty {
    if ((self.outputS.count == 0) && (self.inputS.count == 0)) {
        NSLog(@"栈为空");
        return YES;
    }
    
    return NO;
}

@end
