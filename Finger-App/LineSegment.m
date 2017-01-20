//
//  LineSegment.m
//  Finger-App
//
//  Created by Alex Bearinger on 2017-01-20.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "LineSegment.h"

@implementation LineSegment

-(instancetype)initWithFirstPoint:(CGPoint)firstpoint secondPoint:(CGPoint)secondPoint{
    self = [super init];
    if(self){
        _firstPoint = firstpoint;
        _secondPoint = secondPoint;
    }
    return self;
}

@end
