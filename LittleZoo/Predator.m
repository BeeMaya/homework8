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
    return (food.type == FoodType_Meat);
}

- (BOOL)play:(id)toy {
    return NO;
}


@end