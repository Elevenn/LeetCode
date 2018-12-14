//
//  main.m
//  Stack->Queue_OC_LeetCode_232
//
//  Created by 肖鑫 on 2018/12/13.
//  Copyright © 2018 Eleven. All rights reserved.
//

/** 使用栈实现队列的下列操作：
 push(x) -- 将一个元素放入队列的尾部。
 pop() -- 从队列首部移除元素。
 peek() -- 返回队列首部的元素。
 empty() -- 返回队列是否为空。
 示例:
 
 MyQueue queue = new MyQueue();
 
 queue.push(1);
 queue.push(2);
 queue.peek();  // 返回 1
 queue.pop();   // 返回 1
 queue.empty(); // 返回 false
 说明:
 
 你只能使用标准的栈操作 -- 也就是只有 push to top, peek/pop from top, size, 和 is empty 操作是合法的。
 你所使用的语言也许不支持栈。你可以使用 list 或者 deque（双端队列）来模拟一个栈，只要是标准的栈操作即可。
 假设所有操作都是有效的 （例如，一个空的队列不会调用 pop 或者 peek 操作）。
 */

#import <Foundation/Foundation.h>

#import "XXQueue.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        XXQueue *queue = [[XXQueue alloc] init];
        
        for (int i = 0; i < 20; ++ i) {
            [queue push:@(100 + i)];
        }
        
        NSLog(@"%@", [queue peek]);
        
        [queue pop];
        
        NSLog(@"%@", [queue peek]);
        
        for (int i = 0; i < 18; ++ i) {
            [queue pop];
            NSLog(@"%@", [queue peek]);
        }
        
        [queue pop];
        [queue pop];
        
        BOOL isEmpty = [queue isEmpty];
    }
    return 0;
}

