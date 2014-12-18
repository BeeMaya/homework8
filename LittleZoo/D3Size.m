//
//  D3Size.m
//  LittleZoo
//
//  Created by Maya on 12/13/14.
//  Copyright (c) 2014 Maya. All rights reserved.
//

#import "D3Size.h"
#import "Food.h"

@implementation D3Size
- (instancetype)initWithHeight:(NSNumber *)height width:(NSNumber *)width length:(NSNumber *)length {
    self = [super init];
    if (self) {
        self.height = height;
        self.width = width;
        self.length = length;
    }

    return self;
}

+ (instancetype)sizeWithHeight:(NSNumber *)height width:(NSNumber *)width length:(NSNumber *)length {
    return [[self alloc] initWithHeight:height width:width length:length];
}

- (NSNumber *)volume {
    NSNumber *result = @(self.height.intValue * self.length.intValue * self.width.intValue);
    return result;
}


@end
