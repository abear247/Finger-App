//
//  View.m
//  Finger-App
//
//  Created by Alex Bearinger on 2017-01-20.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "drawView.h"

@implementation drawView

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self){
        Line *line = [[Line alloc] initWithColour:[UIColor blackColor]];
        _lines = [NSMutableArray new];
        [self.lines addObject:line];
    }
    return self;
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint first = [touch previousLocationInView:self];
    CGPoint second = [touch locationInView:self];
    LineSegment *lineSegment = [[LineSegment alloc] initWithFirstPoint:first secondPoint:second];
    Line *line = self.lines.lastObject;
    [line.lineSegments addObject:lineSegment];
    [self setNeedsDisplay];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint first = [touch previousLocationInView:self];
    CGPoint second = [touch locationInView:self];
    LineSegment *lineSegment = [[LineSegment alloc] initWithFirstPoint:first secondPoint:second];
    Line *line = self.lines.lastObject;
    [line.lineSegments addObject:lineSegment];
    [self setNeedsDisplay];
}

-(void)createLine:(UIColor *)colour{
    Line *line = [[Line alloc] initWithColour:colour];
    [self.lines addObject:line];
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
 
  //  Line *line = self.lines.lastObject;
  
    for (Line *line in self.lines){
          [line.colour setStroke];
        UIBezierPath *path = [UIBezierPath new];
        path.lineWidth = 10;
        path.lineCapStyle = kCGLineCapRound;
        for (LineSegment *lineSegment in line.lineSegments){
          
            if (CGPointEqualToPoint(lineSegment.firstPoint, lineSegment.secondPoint)){
                [path moveToPoint:lineSegment.firstPoint];
                continue;
            }
            [path addLineToPoint:lineSegment.firstPoint];
            [path addLineToPoint:lineSegment.secondPoint];
            
        }
        [path stroke];
        
    }
    
    
}

-(void)clear{
    [self.lines removeAllObjects];
    [self setNeedsDisplay];
}
@end
