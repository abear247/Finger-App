//
//  ViewController.m
//  Finger-App
//
//  Created by Alex Bearinger on 2017-01-20.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet drawView *drawView;
@property float redAmount;
@property float greenAmount;
@property float blueAmount;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.opacitySlider.layer.masksToBounds = YES;
    self.opacitySlider.layer.cornerRadius = 10;
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)clear:(id)sender {
    [self.drawView clear];
}
- (IBAction)redChange:(id)sender {
    self.redAmount = self.red.value/255;
    UIColor *colour = [UIColor colorWithRed:self.redAmount green:self.greenAmount blue:self.blueAmount alpha:self.opacity];
       self.opacitySlider.backgroundColor = colour;
   [self.drawView createLine:colour alpha:self.opacity];
}
- (IBAction)greenChange:(id)sender {
    self.greenAmount = self.green.value/255;
    UIColor *colour = [UIColor colorWithRed:self.redAmount green:self.greenAmount blue:self.blueAmount alpha:self.opacity];
       self.opacitySlider.backgroundColor = colour;
   [self.drawView createLine:colour alpha:self.opacity];
}
- (IBAction)blueChange:(id)sender {
    self.blueAmount = self.blue.value/255;
    UIColor *colour = [UIColor colorWithRed:self.redAmount green:self.greenAmount blue:self.blueAmount alpha:self.opacity];
    self.opacitySlider.backgroundColor = colour;
    [self.drawView createLine:colour alpha:self.opacity];
}

- (IBAction)alphaSlider:(id)sender {
    self.opacity = self.opacitySlider.value;
    self.opacitySlider.alpha = self.opacitySlider.value;
    UIColor *colour = [UIColor colorWithRed:self.redAmount green:self.greenAmount blue:self.blueAmount alpha:1];
    [self.drawView createLine:colour alpha:self.opacity];

}

- (IBAction)saveColour:(id)sender {
    [self.drawView createLine:[UIColor whiteColor] alpha:1];;
}



@end
