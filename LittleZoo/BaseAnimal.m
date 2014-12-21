//
// Created by Maya on 12/16/14.
// Copyright (c) 2014 Maya. All rights reserved.
//

#import "Animal.h"
#import "BaseAnimal.h"
#import "Food.h"
#import "D3Size.h"

@implementation BaseAnimal

@synthesize size = _size;
@synthesize weight = _weight;

- (instancetype)initWithSize:(D3Size *)size weight:(NSNumber *)weight {
    self = [super init];
    if (self) {
        _size = size;
        _weight = weight;
    }

    return self;
}

+ (instancetype)animalWithSize:(D3Size *)size weight:(NSNumber *)weight {
    return [[self alloc] initWithSize:[size copy] weight:weight];
}


- (BOOL)feed:(id <Food>)food {
    if(food != self)
        return YES;
    return NO;
}

- (BOOL)play:(id)toy {
    return NO;
}


- (FoodType)type {
    return FoodType_Meat;
}




@end