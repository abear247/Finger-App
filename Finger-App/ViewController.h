//
//  ViewController.h
//  Finger-App
//
//  Created by Alex Bearinger on 2017-01-20.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "View.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *red;
@property (weak, nonatomic) IBOutlet UISlider *green;
@property (weak, nonatomic) IBOutlet UISlider *blue;


@end

