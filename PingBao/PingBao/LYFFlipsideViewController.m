//
//  LYFFlipsideViewController.m
//  PingBao
//
//  Created by 老李 on 15-11-9.
//  Copyright (c) 2015年 Alibaba. All rights reserved.
//

#import "LYFFlipsideViewController.h"

@interface LYFFlipsideViewController ()

@end

@implementation LYFFlipsideViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
