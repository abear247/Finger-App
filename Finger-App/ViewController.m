//
//  ViewController.m
//  Finger-App
//
//  Created by Alex Bearinger on 2017-01-20.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet View *drawView;
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
    self.redAmount = self.red.value;
    [self.drawView createLine:[UIColor colorWithRed:self.redAmount green:self.greenAmount blue:self.blueAmount alpha:1]];
}
- (IBAction)greenChange:(id)sender {
    self.greenAmount = self.green.value;
    [self.drawView createLine:[UIColor colorWithRed:self.redAmount green:self.greenAmount blue:self.blueAmount alpha:1]];
}
- (IBAction)blueChange:(id)sender {
    self.blueAmount = self.blue.value;
    [self.drawView createLine:[UIColor colorWithRed:self.redAmount green:self.greenAmount blue:self.blueAmount alpha:1]];
}




@end
