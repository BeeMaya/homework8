//
// Created by Maya on 12/16/14.
// Copyright (c) 2014 Maya. All rights reserved.
//

#import <Foundation/Foundation.h>

@class D3Size;

@protocol Measurable <NSObject>

@property (nonatomic,strong) D3Size* size;
@property (nonatomic,strong) NSNumber* weight;

@end