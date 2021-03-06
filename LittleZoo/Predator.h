//
// Created by Maya on 12/13/14.
// Copyright (c) 2014 Maya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "BaseAnimal.h"


@class D3Size;


@interface Predator : BaseAnimal <NSCopying>
- (BOOL)isEqual:(id)other;

- (BOOL)isEqualToPredator:(Predator *)predator;

- (NSUInteger)hash;

- (id)copyWithZone:(NSZone *)zone;


@end