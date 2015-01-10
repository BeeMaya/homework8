//
// Created by Maya on 12/16/14.
// Copyright (c) 2014 Maya. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Animal;
@protocol Food;
@class D3Size;

@interface BaseAnimal: NSObject <Animal, Food>

- (instancetype)initWithSize:(D3Size *)size weight:(NSNumber *)weight;

+ (instancetype)animalWithSize:(D3Size *)size weight:(NSNumber *)weight;

//+ (instancetype)animalWithSize:(D3Size *)size weight:(NSNumber *)weight species:(NSString *)species name:(NSString *)name;


@end