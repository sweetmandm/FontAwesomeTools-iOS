//
//  FontAwesome.m
//  FontAwesomeTools-iOS is Copyright 2013 TapTemplate and released under the Apache license.
//  www.taptemplate.com
//

#import "FontAwesome.h"
#import <CoreText/CoreText.h>

@implementation FontAwesome

//================================
// Font and Label Methods
//================================

+ (UIFont*)fontWithSize:(CGFloat)size;
{
    return [UIFont fontWithName:@"FontAwesome" size:size];
}

+ (UILabel*)labelWithIcon:(NSString*)fa_icon size:(CGFloat)size color:(UIColor*)color
{
    UILabel *label = [[UILabel alloc] init];
    label.font = [FontAwesome fontWithSize:size];
    label.text = fa_icon;
    label.textColor = color;
    label.backgroundColor = [UIColor clearColor];
    [label sizeToFit];
    return label;
}

//================================
// Image Methods
//================================

+ (UIImage*)imageWithIcon:(NSString*)fa_icon size:(CGFloat)size color:(UIColor*)color
{
    return [FontAwesome imageWithIcon:fa_icon iconColor:color iconSize:size imageSize:CGSizeMake(size, size)];
}

+ (UIImage*)imageWithIcon:(NSString*)fa_icon iconColor:(UIColor*)iconColor iconSize:(CGFloat)iconSize imageSize:(CGSize)imageSize;
{
    NSAssert(fa_icon, @"You must specify an icon from font-awesome-codes.h.");
    if (!iconColor) { iconColor = [UIColor blackColor]; }
    
    UIGraphicsBeginImageContextWithOptions(imageSize, NO, 0.0);
    NSAttributedString* attString = [[NSAttributedString alloc]
                                     initWithString:fa_icon
                                     attributes:@{NSFontAttributeName: [FontAwesome fontWithSize:iconSize],
                                                  NSForegroundColorAttributeName : iconColor}];
    // get the target bounding rect in order to center the icon within the UIImage:
    NSStringDrawingContext *ctx = [[NSStringDrawingContext alloc] init];
    CGRect boundingRect = [attString boundingRectWithSize:CGSizeMake(iconSize, iconSize) options:0 context:ctx];
    // draw the icon string into the image:
    [attString drawInRect:CGRectMake((imageSize.width/2.0f) - boundingRect.size.width/2.0f,
                                     (imageSize.height/2.0f) - iconSize/2.0f,
                                     imageSize.width,
                                     imageSize.height)];
    UIImage *iconImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return iconImage;
}

@end
