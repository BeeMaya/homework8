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

- (id)copyWithZone:(NSZone *)zone {
    D3Size *copy = [[[self class] allocWithZone:zone] init];

    if (copy != nil) {
        copy.height = self.height;
        copy.width = self.width;
        copy.length = self.length;
    }

    return copy;
}

- (BOOL)isEqual:(id)other {
    if (other == self)
        return YES;
    if (!other || ![[other class] isEqual:[self class]])
        return NO;

    return [self isEqualToSize:other];
}

- (BOOL)isEqualToSize:(D3Size *)size {
    if (self == size)
        return YES;
    if (size == nil)
        return NO;
    if (self.height != size.height && ![self.height isEqualToNumber:size.height])
        return NO;
    if (self.width != size.width && ![self.width isEqualToNumber:size.width])
        return NO;
    if (self.length != size.length && ![self.length isEqualToNumber:size.length])
        return NO;
    return YES;
}

- (NSUInteger)hash {
    NSUInteger hash = [self.height hash];
    hash = hash * 31u + [self.width hash];
    hash = hash * 31u + [self.length hash];
    return hash;
}


@end
