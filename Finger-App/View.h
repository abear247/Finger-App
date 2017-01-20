//
//  View.h
//  Finger-App
//
//  Created by Alex Bearinger on 2017-01-20.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Line.h"

@interface View : UIView
@property NSMutableArray *lines;
-(void)createLine:(UIColor*)colour;
-(void)clear;
@end
