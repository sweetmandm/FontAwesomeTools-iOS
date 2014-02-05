//
//  ViewController.m
//  FontAwesome-iOS-Demo
//
//  Created by ds on 10/23/13.
//  Copyright (c) 2013 TapTemplate. All rights reserved.
//

#import "ViewController.h"
#import "FontAwesome.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // UILabel Example:
    UILabel *label = [FontAwesome labelWithIcon:fa_cutlery size:20.0f color:[UIColor blackColor]];
    label.center = CGPointMake(self.view.center.x, self.view.center.y-200.0f);
    [self.view addSubview:label];
    
    // UIImage Example:
    // NOTE: The image methods only work if your app's base sdk is iOS 6+.
    UIImage *icon = [FontAwesome imageWithIcon:fa_cutlery
                                     iconColor:[UIColor redColor]
                                      iconSize:60.0f
                                     imageSize:CGSizeMake(90.0f, 90.0f)];
    UIImageView *img = [[UIImageView alloc] initWithImage:icon];
    img.center = self.view.center;
    img.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:img];

    // UIImage Example:
    // NOTE: The image methods only work if your app's base sdk is iOS 6+.
    UIImage *icon2 = [FontAwesome imageWithText:@"\uf190"
                                           font:@"FontAwesome"  // or your custom font here
                                      iconColor:[UIColor redColor]
                                       iconSize:60.0f
                                      imageSize:CGSizeMake(90.0f, 90.0f)];
    UIImageView *img2 = [[UIImageView alloc] initWithImage:icon2];
    img2.center = CGPointMake(160, 360);
    img2.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:img2];
}

@end
