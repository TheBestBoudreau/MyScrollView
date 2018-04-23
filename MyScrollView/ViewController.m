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
    CGRect redFrame = CGRectMake(20, 20, 100, 100);
    self.red =[[UIView alloc] initWithFrame:redFrame];
    self.red.backgroundColor=[UIColor redColor];
    [self.view addSubview:self.red];
    
    
    CGRect blueFrame = CGRectMake(150, 150, 150, 200);
    self.blue =[[UIView alloc] initWithFrame:blueFrame];
    self.blue.backgroundColor=[UIColor blueColor];
    [self.view addSubview:self.blue];
    
    
    CGRect greenFrame = CGRectMake(40, 400, 200, 150);
    self.green =[[UIView alloc] initWithFrame:greenFrame];
    self.green.backgroundColor=[UIColor greenColor];
    [self.view addSubview:self.green];
    
    CGRect yellowFrame = CGRectMake(100, 600, 180, 150);
    self.yellow =[[UIView alloc] initWithFrame:yellowFrame];
    self.yellow.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:self.yellow];
    
    
    UIPanGestureRecognizer *pan =[[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(viewPanned:)];
    
    [self.view addGestureRecognizer:pan];
}

-(void)viewDidAppear:(BOOL)animated{
    self.view.bounds = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y+100, self.view.frame.size.width, self.view.frame.size.height);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewPanned:(UIPanGestureRecognizer *)sender
{
    CGPoint translationInView = [sender translationInView:self.view];
    CGPoint oldCenter =sender.view.center;
    
    CGPoint newCenter = CGPointMake(oldCenter.x+translationInView.x, oldCenter.y+translationInView.y);
    sender.view.center=newCenter;
    [sender setTranslation:CGPointZero inView:self.view];
}


@end
