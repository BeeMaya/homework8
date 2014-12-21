//
// Created by Maya on 12/13/14.
// Copyright (c) 2014 Maya. All rights reserved.
//

#import "Predator.h"
#import "Food.h"
#import "D3Size.h"


@implementation Predator {

}

- (BOOL)feed:(id <Food>)food {
    BOOL result = [super feed: food];
    if(result)
    result = (food.type == FoodType_Meat);

    return result;
}


- (id)copyWithZone:(NSZone *)zone {
    return [[[self class] allocWithZone:zone] init];
}

- (BOOL)isEqual:(id)other {
    if (other == self)
        return YES;
    if (!other || ![[other class] isEqual:[self class]])
        return NO;

    return [self isEqualToPredator:other];
}

- (BOOL)isEqualToPredator:(Predator *)predator {
    if (self == predator)
        return YES;
    if (predator == nil)
        return NO;
    return YES;
}

- (NSUInteger)hash {
    return [super hash];
}


@end