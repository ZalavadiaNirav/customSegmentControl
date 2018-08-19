//
//  ViewController.m
//  customControl
//
//  Created by Gaurav Amrutiya on 19/08/18.
//  Copyright © 2018 Gaurav Amrutiya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(segmentChanged:) name:@"segmentChanged" object:nil];
}

-(void)segmentChanged:(NSNotification *) notification
{
    UIButton *selectedSegmentBtn=(UIButton *)notification.object;
    
    selectedSegmentBtn.backgroundColor=[UIColor colorWithRed:(255.0/255.0) green:(128.0/255.0) blue:(0.0/255.0) alpha:1.0];
    if([selectedSegmentBtn.titleLabel.text isEqualToString:@"Residential"]==true)
    {
        [_segmentControl.commercialBtn setBackgroundColor:[UIColor colorWithRed:(0.0/255.0) green:(84.0/255.0) blue:(147.0/255.0) alpha:1.0]];
    }
    else
    {
        
        [_segmentControl.residentailBtn setBackgroundColor:[UIColor colorWithRed:(0.0/255.0) green:(84.0/255.0) blue:(147.0/255.0) alpha:1.0]];
    }
    
    NSLog(@"selected Index=%ld",(long)selectedSegmentBtn.tag);
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
