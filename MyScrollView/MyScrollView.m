//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Tyler Boudreau on 2018-04-23.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView ()


@end

@implementation MyScrollView

-(instancetype)initWithFrame:(CGRect)frame{
    self= [super initWithFrame:frame];
    if (self){
        _pan =[[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(viewPanned:)];
        
        [self addGestureRecognizer:self.pan];
    }
    return self;
}

-(void)viewPanned:(UIPanGestureRecognizer *)sender
{
    
    CGPoint translationInView = [sender translationInView:self];
    CGRect oldBounds =self.bounds;
    
    CGRect newBounds = CGRectMake(0, oldBounds.origin.y-translationInView.y, oldBounds.size.width, oldBounds.size.height);
    self.bounds=newBounds;
    [sender setTranslation:CGPointZero inView:self];
    
    NSLog(@"%@",NSStringFromCGPoint(translationInView));
    
    if (self.bounds.origin.y <= 0){
        [self setBounds:CGRectMake(0, 0, oldBounds.size.width, oldBounds.size.height)];
    }
    if (self.bounds.origin.y >=self.contentSize.height - self.frame.size.height){
        [self setBounds:CGRectMake(0, self.contentSize.height -self.frame.size.height, oldBounds.size.width, oldBounds.size.height)];
    }


    
    
}






@end
