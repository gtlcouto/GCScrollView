//
//  GCScrollView.m
//  GCScrollView
//
//  Created by Gustavo Couto on 2016-05-16.
//  Copyright © 2016 Gustavo Couto. All rights reserved.
//

#import "GCScrollView.h"

@interface GCScrollView ()

@property UIPanGestureRecognizer* panGesture;

@end

@implementation GCScrollView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];

    self.panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panHandler:)];
    [self addGestureRecognizer:self.panGesture];
    [self setUserInteractionEnabled:YES];
    return self;
}


-(void)panHandler:(UIPanGestureRecognizer*)recognizer
{

    CGPoint translation = [recognizer translationInView:recognizer.view];

    
    [self translateViewBounds:recognizer.view By:translation];

    [recognizer setTranslation:CGPointZero inView:recognizer.view];

}


-(void)translateViewBounds:(UIView*)view By:(CGPoint)point
{
    CGRect theBounds = view.bounds;
    theBounds.origin.x -= point.x;
    theBounds.origin.y -= point.y;

    if(theBounds.origin.x < self.frame.origin.x)
    {
        theBounds.origin.x = self.frame.origin.x;
    }

    if (theBounds.origin.y < self.frame.origin.y)
    {
        theBounds.origin.y = self.frame.origin.y;
    }






    if (theBounds.origin.x + self.bounds.size.width > self.contentSize.width)
    {
        theBounds.origin.x = self.contentSize.width - self.bounds.size.width;
    }



    if (theBounds.origin.y + self.bounds.size.height > self.contentSize.height)
    {
        theBounds.origin.y = self.contentSize.height - self.bounds.size.height;
    }

//    theBounds.origin.x = x;
//]    theBounds.origin.y = y;

    view.bounds = theBounds;
}



@end
