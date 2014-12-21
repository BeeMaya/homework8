//
// Created by Maya on 12/21/14.
// Copyright (c) 2014 Maya. All rights reserved.
//

#import "Cage.h"
#import "Predator.h"
#import "Animal.h"


@interface Cage ()
@property(nonatomic, strong) NSMutableArray *animals;
@end

@implementation Cage {

}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.animals = [[NSMutableArray alloc] initWithCapacity:10];
        
    }
    return self;
}


- (BOOL)addAnimal:(id <Animal>)animal {
    [self.animals addObject:animal];
    return YES;
}

- (NSInteger)animalsCount {
    return self.animals.count;
}

- (BOOL)containsAnimal:(id <Animal>)animal {
    return [self.animals containsObject:animal];
}


- (NSArray *)filterPredators {
    NSPredicate * predicate = [NSPredicate predicateWithBlock:^BOOL(id <Animal>evaluatedObject, NSDictionary *bindings) {
        return [evaluatedObject isKindOfClass:[Predator class]];
    }];

    return [self.animals filteredArrayUsingPredicate:predicate];


}
@end