//
//  TestView.m
//  textLayout
//
//  Created by  on 19/08/16.
//  Copyright © 2016 Sourav Ray. All rights reserved.
//

#import "TestView.h"

@implementation TestView

-(void) awakeFromNib{
    NSLog(@"loaded view: superview %@",self.superview);
    
    self.translatesAutoresizingMaskIntoConstraints = YES;
    
    NSLayoutConstraint *xCons = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.superview attribute:NSLayoutAttributeLeft multiplier:0.25 constant:0];
     NSLayoutConstraint *yCons = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.superview attribute:NSLayoutAttributeTop multiplier:0.25 constant:0];
    
    [self.superview addConstraints:@[xCons,yCons]];
    
    
}

@end
