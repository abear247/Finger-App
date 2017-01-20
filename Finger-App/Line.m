//
//  Line.m
//  Finger-App
//
//  Created by Alex Bearinger on 2017-01-20.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "Line.h"

@implementation Line

-(instancetype)initWithColour:(UIColor *)colour{
    self = [super init];
    if (self){
        _lineSegments = [NSMutableArray new];
        _colour = colour;
    }
    return self;
}



@end
