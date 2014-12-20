//
// Created by Maya on 12/13/14.
// Copyright (c) 2014 Maya. All rights reserved.
//

#import "Animal.h"
#import "Gracing.h"

@implementation Gracing{
}
@synthesize size = _size;
@synthesize weight = _weight;

- (BOOL)feed:(id <Food>)food {
    return food.type == FoodType_Grass, FoodType_Other;
}


- (BOOL)play:(id)toy {
    return NO;
}



@end