//
//  XXQueue.h
//  Stack->Queue_OC_LeetCode_232
//
//  Created by 肖鑫 on 2018/12/13.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class XXStack;
@interface XXQueue : NSObject

@property (nonatomic, strong) XXStack *inputS;
@property (nonatomic, strong) XXStack *outputS;

- (instancetype)init;

- (BOOL)push:(id)obj;
- (id)peek;
- (id)pop;
- (BOOL)isEmpty;

@end

NS_ASSUME_NONNULL_END
