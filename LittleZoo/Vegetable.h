//
// Created by Maya on 12/14/14.
// Copyright (c) 2014 Maya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Food.h"

@class D3Size;


@interface Vegetable : NSObject<Food>
- (instancetype)initWithSize:(D3Size *)size;

- (instancetype)initWithWeight:(NSNumber *)weight;

+ (instancetype)vegetableWithWeight:(NSNumber *)weight;


+ (instancetype)vegetableWithSize:(D3Size *)size;


@end