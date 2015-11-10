//
//  LYFMainViewController.m
//  PingBao
//
//  Created by 老李 on 15-11-9.
//  Copyright (c) 2015年 Alibaba. All rights reserved.
//

#import "LYFMainViewController.h"

@interface LYFMainViewController ()

@end

@implementation LYFMainViewController

@synthesize ball;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    pos = CGPointMake(14, 7);
    
    [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
    ball = [[UIImageView alloc]initWithFrame:CGRectMake(20, 20, 32, 32)];
    ball.image = [UIImage imageNamed:@"1"];
    [self.view addSubview:ball];
    
}

-(void)onTimer
{
    
    ball.center = CGPointMake(ball.center.x + pos.x, ball.center.y + pos.y);
    
    if (ball.center.x > 305 || ball.center.x <15) {
        pos.x = -pos.x;
        
    }
    
    if (ball.center.y > 445 || ball.center.y <15) {
        pos.y = -pos.y;
        
    }
    
    UIImageView * imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"2"]];
    
    imageView.frame = CGRectMake(ball.center.x - 16, ball.center.y - 16, 32, 32);
    
    [self.view addSubview:imageView];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:3.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    imageView.frame = CGRectMake(ball.center.x - 6, ball.center.y - 6, 12, 12);
    [imageView setAlpha:0.0];
    [UIView commitAnimations];
    
    [self.view bringSubviewToFront:ball];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(LYFFlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

@end
