//
//  ViewController.m
//  MyScrollView
//
//  Created by Tyler Boudreau on 2018-04-23.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property MyScrollView * scrollView;
@property UIView *red;
@property UIView *blue;
@property UIView *green;
@property UIView *yellow;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _scrollView = [[MyScrollView alloc]initWithFrame: self.view.bounds];
    
    CGRect redFrame = CGRectMake(20, 20, 100, 100);
    self.red =[[UIView alloc] initWithFrame:redFrame];
    self.red.backgroundColor=[UIColor redColor];
    [self.scrollView addSubview:self.red];
    
    
    CGRect blueFrame = CGRectMake(150, 150, 150, 200);
    self.blue =[[UIView alloc] initWithFrame:blueFrame];
    self.blue.backgroundColor=[UIColor blueColor];
    [self.scrollView addSubview:self.blue];
    
    
    CGRect greenFrame = CGRectMake(40, 400, 200, 150);
    self.green =[[UIView alloc] initWithFrame:greenFrame];
    self.green.backgroundColor=[UIColor greenColor];
    [self.scrollView addSubview:self.green];
    
    CGRect yellowFrame = CGRectMake(100, 600, 180, 150);
    self.yellow =[[UIView alloc] initWithFrame:yellowFrame];
    self.yellow.backgroundColor=[UIColor yellowColor];
    [self.scrollView addSubview:self.yellow];
    
    [self.view addSubview:self.scrollView];
    
    CGFloat width = CGRectGetWidth(self.view.frame);
    
 
    self.scrollView.contentSize = CGSizeMake(width, 750);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
