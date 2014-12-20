//
//  GracingTest.m
//  LittleZoo
//
//  Created by Maya on 12/20/14.
//  Copyright (c) 2014 Maya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Predator.h"
#import "Gracing.h"
#import "D3Size.h"
#import "Rabbit.h"
#import "Vegetable.h"
#import "BaseAnimal.h"


@interface GracingTest : XCTestCase

@end

@implementation GracingTest

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}



- (void)testFeed {
    D3Size *size = [[D3Size alloc] initWithHeight:@(10) width:@(27) length:@(89)];
    Gracing *gracing = [Gracing animalWithSize:size weight:@(100)];


    Vegetable *grass= [[Vegetable alloc] init];
    BOOL result = [gracing feed:grass];


    XCTAssert(result, @"Gracing eats grass");
}




@end
