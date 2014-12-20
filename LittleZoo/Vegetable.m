//
// Created by Maya on 12/14/14.
// Copyright (c) 2014 Maya. All rights reserved.
//

#import "Vegetable.h"
#import "Measurable.h"
#import "D3Size.h"

@implementation Vegetable

@synthesize size = _size;
@synthesize weight = _weight;

- (instancetype)initWithSize:(D3Size *)size {
    self = [super init];
    if (self) {
        _size = size;
    }

    return self;
}

+ (instancetype)vegetableWithSize:(D3Size *)size {
    return [[self alloc] initWithSize:size];
}

- (instancetype)initWithWeight:(NSNumber *)weight {
    self = [super init];
    if (self) {
        _weight = weight;
    }

    return self;
}

+ (instancetype)vegetableWithWeight:(NSNumber *)weight {
    return [[self alloc] initWithWeight:weight];
}

- (FoodType)type {
    return FoodType_Grass;
}

@end