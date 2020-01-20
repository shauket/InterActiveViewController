//
//  CustomAnimation.m
//  InteractiveUIViewController
//
//  Created by Sohail on 19/01/2020.
//  Copyright © 2020 Sohail. All rights reserved.
//

#import "CustomAnimation.h"

@implementation CustomAnimation


- (void)presentAnimateTransition:(nonnull id <HWPresentingViewControllerContextTransitioning>)context {
    NSTimeInterval duration = [context transitionDuration];
    UIViewController *fromVC = [context viewControllerForKey:UITransitionContextFromViewControllerKey];
    [UIView animateWithDuration:duration delay:0 usingSpringWithDamping:0.8 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        fromVC.view.transform = CGAffineTransformMakeScale(0.9, 0.9);
    } completion:^(BOOL finished) {
        
    }];
}

- (void)dismissAnimateTransition:(nonnull id <HWPresentingViewControllerContextTransitioning>)context {
    // no need for using animating block.
    UIViewController *toVC = [context viewControllerForKey:UITransitionContextToViewControllerKey];
    toVC.view.transform = CGAffineTransformIdentity;
}

@end
