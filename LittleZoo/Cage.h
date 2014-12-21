//
// Created by Maya on 12/21/14.
// Copyright (c) 2014 Maya. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol Animal;


@interface Cage : NSObject


- (BOOL)addAnimal:(id <Animal>)animal;

- (NSInteger)animalsCount;

- (BOOL)containsAnimal:(id <Animal>)animal;

- (NSArray *)filterPredators;
@end