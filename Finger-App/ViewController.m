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
@property (weak, nonatomic) IBOutlet UILabel *colourShower;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.colourShower.layer.masksToBounds = YES;
    self.colourShower.layer.cornerRadius = 10;
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)clear:(id)sender {
    [self.drawView clear];
}
- (IBAction)redChange:(id)sender {
    self.redAmount = self.red.value/255;
}
- (IBAction)greenChange:(id)sender {
    self.greenAmount = self.green.value/255;
}
- (IBAction)blueChange:(id)sender {
    self.blueAmount = self.blue.value/255;
}
- (IBAction)eraser:(id)sender {
    [self.drawView createLine:[UIColor whiteColor]];
}

- (IBAction)saveColour:(id)sender {
    UIColor *colour = [UIColor colorWithRed:self.redAmount green:self.greenAmount blue:self.blueAmount alpha:1];
    [self.drawView createLine:colour];
    self.colourShower.backgroundColor = colour;
}



@end
