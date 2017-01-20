//
//  Line.h
//  Finger-App
//
//  Created by Alex Bearinger on 2017-01-20.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

@import UIKit;
#import "LineSegment.h"
#import "LineSegment.h"


@interface Line : NSObject
@property NSMutableArray *lineSegments;
@property UIColor *colour;
-(instancetype)initWithColour:(UIColor *)colour;
@end
