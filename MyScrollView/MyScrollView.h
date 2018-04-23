//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Tyler Boudreau on 2018-04-23.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

-(void)viewPanned:(UIPanGestureRecognizer *)sender;
@property CGSize contentSize;
@property UIPanGestureRecognizer *pan;


@end
