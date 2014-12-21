#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Predator.h"
#import "Gracing.h"
#import "D3Size.h"
#import "Rabbit.h"
#import "Vegetable.h"
#import "BaseAnimal.h"


@interface PredatorTest : XCTestCase

@end

@implementation PredatorTest

- (void)setUp {
    [super setUp];

}

- (void)tearDown {
    [super tearDown];
}

- (void)testFeed {

    D3Size *size = [[D3Size alloc] initWithHeight:@(10) width:@(27) length:@(89)];
    Predator *predator = [Predator animalWithSize:size weight:@(100)];

    Rabbit * food= [[Rabbit alloc] init];
    food.weight = @(3);
    food.size = [D3Size sizeWithHeight:@(30) width:@(17) length:@(50)];

    BOOL result = [predator feed:food];

    XCTAssert(result, @"Predator eats meat");

    Vegetable *carrot = [[Vegetable alloc]init];
    result = [predator feed:carrot];

    XCTAssertFalse(result, @"Predator not eats vegetables");
}



- (void) testFeed_self{
    D3Size *size = [[D3Size alloc] initWithHeight:@(15) width:@(37) length:@(39)];
    Predator *predator = [Predator animalWithSize:size weight:@(50)];
    BOOL result = [predator feed: predator];

    XCTAssertFalse(result, @"Animal doesn't eat itself");
}

- (void) testIntegrity{
    D3Size *size = [[D3Size alloc] initWithHeight:@(15) width:@(37) length:@(39)];

    Predator *predator1 = [Predator animalWithSize:size weight:@(100)];
    size.height =@(155);

    Predator *predator2 = [Predator animalWithSize:size weight:@(100)];

    XCTAssertNotEqualObjects(predator1.size.height, predator2.size.height, @"Obiects are equal, but should not be");

    NSLog (@"predator1 %@", predator1);
    NSLog (@"predator2 %@", predator2);
}







//- (void) testFeed_otherBigAnimal{
//    D3Size *size = [[D3Size alloc] initWithHeight:@(15) width:@(37) length:@(39)];
//    Predator *predator = [Predator animalWithSize:size weight:@(50)];
//
//    Predator *big_animal =
//    BOOL result = [predator feed: predator];
//}

@end
