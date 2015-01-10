    #import <Foundation/Foundation.h>
#import "Food.h"

@class D3Size;

@protocol Animal <NSObject,Measurable>

-(BOOL)feed:(id<Food>)food;
-(BOOL)play:(id)toy;


@optional
-(BOOL)sleep;

//@property (nonatomic, copy) NSString *specтies;

//@property (nonatomic, copy) NSString *name;


@end
