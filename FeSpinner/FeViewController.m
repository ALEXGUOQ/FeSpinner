//
//  FeViewController.m
//  FeSpinner
//
//  Created by Nghia Tran on 11/20/13.
//  Copyright (c) 2013 fe. All rights reserved.
//

#import "FeViewController.h"
#import "FXBlurView.h"
#import "UIColor+flat.h"
#import "FeSpinnerTenDot.h"

@interface FeViewController ()
@property (strong, nonatomic) FeSpinnerTenDot *spinnerTenDot;
@property (weak, nonatomic) IBOutlet UIView *containerView;
- (IBAction)start:(id)sender;
- (IBAction)stop:(id)sender;

@end

@implementation FeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    _spinnerTenDot = [[FeSpinnerTenDot alloc] initWithView:_containerView withBlur:NO];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)start:(id)sender
{
    [_spinnerTenDot show];
}

- (IBAction)stop:(id)sender
{
    [_spinnerTenDot dismiss];
}
@end
