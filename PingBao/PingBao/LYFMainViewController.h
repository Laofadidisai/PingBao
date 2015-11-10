//
//  LYFMainViewController.h
//  PingBao
//
//  Created by 老李 on 15-11-9.
//  Copyright (c) 2015年 Alibaba. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "LYFFlipsideViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "LYFFlipsideViewController.h"

@interface LYFMainViewController : UIViewController <LYFFlipsideViewControllerDelegate>
{
    
    UIImageView * ball;
    
    CGPoint pos;
}
@property(nonatomic,retain)UIImageView * ball;
@end
