//
//  ViewController.m
//  GCScrollView
//
//  Created by Gustavo Couto on 2016-05-16.
//  Copyright © 2016 Gustavo Couto. All rights reserved.
//

#import "ViewController.h"
#import "GCScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupCustomViews];

}

- (void)viewDidAppear:(BOOL)animated
{
//    [self moveViewBoundsDown:self.view];


}

/**
 *  Moves the view bounds down by 100points
 *
 *  @param view The view that will have its bounds origin changed.
 */
- (void)moveViewBoundsDown:(UIView *)view
{
    //Move the origin of the bounds of your root view down 100 point in the y direction, you should now see part of the yellow box. (Hint: Do this in viewDidAppear)
    CGRect theBounds = view.bounds;
    theBounds.origin.y += 100;
    view.bounds = theBounds;
}

/**
 *  Prepares all the views that will be used in this project.
 */
- (void)setupCustomViews
{
    //Create a UIView and set the frame to be the bounds of your root View.
    GCScrollView * myView = [[GCScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:myView];


    UIView* containerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 800, 800)];
    [myView addSubview:containerView];
    containerView.backgroundColor = [UIColor purpleColor];
    myView.contentSize = containerView.bounds.size;


    //Add four UIViews to myView

    //A red UIView at (20,20) x, y coordinates and with width 100 and height 100
    UIView * redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [containerView addSubview:redView];

    //A green UIView at (150,150) x, y coordinates and with width 150 and height 200
    UIView * greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    [containerView addSubview:greenView];

    //A blue UIView at (40,400) x, y coordinates and with width 200 and height 150
    UIView * blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    [containerView addSubview:blueView];

    //A yellow UIView at (100,600) x, y coordinates and with width 180 and height 150
    UIView * yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [containerView addSubview:yellowView];

}


@end
