//
//  Animal.h
//  LittleZoo
//
//  Created by Maya on 12/13/14.
//  Copyright (c) 2014 Maya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Food.h"

@class D3Size;

@protocol Animal <NSObject,Measurable>

-(BOOL)feed:(id<Food>)food;
-(BOOL)play:(id)toy;


@optional
-(BOOL)sleep;



@end
