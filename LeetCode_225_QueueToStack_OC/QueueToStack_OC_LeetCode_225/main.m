//
//  main.m
//  QueueToStack_OC_LeetCode_225
//
//  Created by 肖鑫 on 2018/12/13.
//  Copyright © 2018 Eleven. All rights reserved.
//

/** 225. 用队列实现栈
 
 使用队列实现栈的下列操作：
 
 push(x) -- 元素 x 入栈
 pop() -- 移除栈顶元素
 top() -- 获取栈顶元素
 empty() -- 返回栈是否为空
 注意:
 
 你只能使用队列的基本操作-- 也就是 push to back, peek/pop from front, size, 和 is empty 这些操作是合法的。
 你所使用的语言也许不支持队列。 你可以使用 list 或者 deque（双端队列）来模拟一个队列 , 只要是标准的队列操作即可。
 你可以假设所有操作都是有效的（例如, 对一个空的栈不会调用 pop 或者 top 操作）。
 */

/*
 1
 push 2 -> 1 2 => 2 1
 push 3 -> 2 1 3 => w3 2 1
 */

/** 思路
 *  1. 每次push数据 会让 Queue 做 enqueue(dequeue()) 的操作
 *      1.1. 把队顶的数据入到队尾 这样就实现了队中的数据颠倒
 *  2. 就能用FIFO的queue来实现FILO的stack
 */


#import <Foundation/Foundation.h>
#import "XXStack.h"
#import "XXQueue.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        XXStack *stack = [[XXStack alloc] initWithStackCapacity:10];
        for (int i = 0; i < 4; ++ i) {
            [stack push:@(i + 100)];
        }
        [stack push:@(104)];
        [stack push:@(105)];
        [stack pop];
        [stack top];
        
//        XXQueue *queue = [[XXQueue alloc] initWithQueueCapacity:20];
//        for (int i = 0; i < 10; ++ i) {
//            [queue enqueue:@(i + 100)];
//        }
//        [queue dequeue];
    }
    return 0;
}
