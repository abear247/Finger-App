//
//  View.m
//  Finger-App
//
//  Created by Alex Bearinger on 2017-01-20.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "View.h"

@implementation View

-(instancetype)init{
    self = [super init];
    if (self)
        _lines = [NSMutableArray new];
    return self;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
}

-(void)createLine:(UIColor *)colour{
    Line *line = [[Line alloc] initWithColour:colour];
    [self.lines addObject:line];
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
}

-(void)clear{
    
}
@end
