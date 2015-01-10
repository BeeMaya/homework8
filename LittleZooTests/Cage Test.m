//
//  Cage Test.m
//  LittleZoo
//
//  Created by Maya on 12/21/14.
//  Copyright (c) 2014 Maya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Cage.h"
#import "Predator.h"
#import "D3Size.h"
#import "Gracing.h"

@interface Cage_Test : XCTestCase

@end

@implementation Cage_Test

- (void)setUp {
    [super setUp];

}

- (void)tearDown {
    [super tearDown];
}

- (void)testAddAnimal {
    Cage* cage = [[Cage alloc]init];

    D3Size *size = [D3Size sizeWithHeight:@(10) width:@(5) length:@(10)];
    Predator* predator = [Predator animalWithSize:size weight:@(5)];

    BOOL result = [cage addAnimal: predator];
    NSInteger count = [cage animalsCount];

    XCTAssertTrue(result, @"animal can be added to cage");
    XCTAssertEqual(count, 1, @"after adding animal to empty cage, cage should contain 1 animal");
}




- (void)testIsAnimalInCage {
    Cage* cage = [[Cage alloc]init];

    D3Size *size = [D3Size sizeWithHeight:@(10) width:@(5) length:@(10)];
    id<Animal> predator = [Predator animalWithSize:size weight:@(5)];

    XCTAssertFalse([cage containsAnimal: predator], @"it should not be possible to find smth in cage");

    [cage addAnimal: predator];

    BOOL result = [cage containsAnimal: predator];
    XCTAssertTrue(result, @"it should be possible to find animal in the cage");
}



- (void)testFilterPredators {
    Cage* cage = [[Cage alloc]init];
    D3Size *size = [D3Size sizeWithHeight:@(10) width:@(5) length:@(10)];
    id<Animal> predator1 = [Predator animalWithSize:size weight:@(5)];
    id<Animal> predator2 = [Predator animalWithSize:size weight:@(6)];
    id<Animal> predator3 = [Predator animalWithSize:size weight:@(7)];
    id<Animal> gracing1 = [Gracing animalWithSize:size weight:@(15)];

    //create local array of objects
    [@[predator1,gracing1,predator2,predator3] enumerateObjectsUsingBlock:^(id <Animal> obj, NSUInteger idx, BOOL *stop) {
        [cage addAnimal:obj];
    }];

    NSArray *predators = [cage filterPredators];
    [predators containsObject:gracing1];

    XCTAssertFalse([predators containsObject:gracing1], @"Filtering of predators should return only predators");


}


@end
