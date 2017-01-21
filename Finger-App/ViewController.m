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

- (IBAction)saveColour:(id)sender {
    [self.drawView createLine:[UIColor colorWithRed:self.redAmount green:self.greenAmount blue:self.blueAmount alpha:1]];
}



@end
