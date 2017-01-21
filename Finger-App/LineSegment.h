//
//  LineSegment.h
//  Finger-App
//
//  Created by Alex Bearinger on 2017-01-20.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

@import UIKit;


@interface LineSegment : NSObject
@property CGPoint firstPoint;
@property CGPoint secondPoint;
@property CGFloat width;
-(instancetype)initWithFirstPoint:(CGPoint)firstpoint secondPoint:(CGPoint)secondPoint;
@end
