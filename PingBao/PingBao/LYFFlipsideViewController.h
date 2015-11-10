//
//  LYFFlipsideViewController.h
//  PingBao
//
//  Created by 老李 on 15-11-9.
//  Copyright (c) 2015年 Alibaba. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LYFFlipsideViewController;

@protocol LYFFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(LYFFlipsideViewController *)controller;
@end

@interface LYFFlipsideViewController : UIViewController

@property (weak, nonatomic) id <LYFFlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
