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
        Line *line = [[Line alloc] initWithColour:[UIColor blackColor] alpha:1];
        _lines = [NSMutableArray new];
        [self.lines addObject:line];
    }
    return self;
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.previousTimeStamp = event.timestamp;
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

-(void)createLine:(UIColor *)colour alpha:(float)alpha{
    Line *line = [[Line alloc] initWithColour:colour alpha:alpha];
    [self.lines addObject:line];
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
 
  
    for (Line *line in self.lines){
        [line.colour setStroke];
        UIBezierPath *path = [UIBezierPath new];
        [path setLineJoinStyle:kCGLineJoinRound];
        path.lineWidth = 8;
        path.lineCapStyle = kCGLineCapRound;
        path.miterLimit = 5;
        
        for (LineSegment *lineSegment in line.lineSegments){
          
            if (CGPointEqualToPoint(lineSegment.firstPoint, lineSegment.secondPoint)){
                [path moveToPoint:lineSegment.firstPoint];
                continue;
            }
            [path addLineToPoint:lineSegment.firstPoint];
            [path addLineToPoint:lineSegment.secondPoint];
           
            
         
            
        }
        [path strokeWithBlendMode:kCGBlendModeNormal alpha:line.alpha];
        
        
    }
    
    [self setNeedsDisplay];
}

-(void)clear{
    [self.lines removeAllObjects];
    [self setNeedsDisplay];
}
@end
