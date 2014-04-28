//
//  GPUEffectVintageBaby.m
//  Vintage
//
//  Created by SSC on 2014/04/01.
//  Copyright (c) 2014年 SSC. All rights reserved.
//

#import "VnEffectVintageBaby.h"

@implementation VnEffectVintageBaby

- (id)init
{
    self = [super init];
    if(self){
        self.defaultOpacity = 0.80f;
        self.faceOpacity = 0.70f;
        self.effectId = VnEffectIdVintageBaby;
    }
    return self;
}

- (UIImage*)process
{
    [VnCurrentImage saveTmpImage:self.imageToProcess];
    
    // Fill Layer
    @autoreleasepool {
        GPUImageSolidColorGenerator* solidColor = [[GPUImageSolidColorGenerator alloc] init];
        [solidColor setColorRed:0.0f/255.0f green:20.0/255.0f blue:28.0f/255.0 alpha:1.0f];
        
        [self mergeAndSaveTmpImageWithOverlayFilter:solidColor opacity:0.55f blendingMode:VnBlendingModeExclusion];
    }
    
    // Gradient
    @autoreleasepool {
        VnAdjustmentLayerGradientColorFill* gradientColor = [[VnAdjustmentLayerGradientColorFill alloc] init];
        [gradientColor forceProcessingAtSize:[VnCurrentImage tmpImageSize]];
        [gradientColor setStyle:GradientStyleLinear];
        [gradientColor setAngleDegree:72.0f];
        [gradientColor setScalePercent:100];
        [gradientColor setOffsetX:-6.0f Y:-2.0f];
        [gradientColor addColorRed:3.0f Green:3.0f Blue:3.0f Opacity:100.0f Location:0 Midpoint:50];
        [gradientColor addColorRed:119.0f Green:114.0f Blue:106.0f Opacity:100.0f Location:2115 Midpoint:50];
        [gradientColor addColorRed:146.0f Green:186.0f Blue:204.0f Opacity:100.0f Location:3439 Midpoint:50];
        [gradientColor addColorRed:255.0f Green:255.0f Blue:255.0f Opacity:100.0f Location:4096 Midpoint:50];
        
        [self mergeAndSaveTmpImageWithOverlayFilter:gradientColor opacity:0.62f blendingMode:VnBlendingModeOverlay];
    }
    
    // Fill Layer
    @autoreleasepool {
        GPUImageSolidColorGenerator* solidColor = [[GPUImageSolidColorGenerator alloc] init];
        [solidColor setColorRed:248.0f/255.0f green:218.0f/255.0f blue:173.0f/255.0 alpha:1.0f];
        
        [self mergeAndSaveTmpImageWithOverlayFilter:solidColor opacity:0.82f blendingMode:VnBlendingModeMultiply];
    }
    
    // Curve
    @autoreleasepool {
        GPUImageToneCurveFilter* curveFilter = [[GPUImageToneCurveFilter alloc] initWithACV:@"vb1"];
        
        [self mergeAndSaveTmpImageWithOverlayFilter:curveFilter opacity:1.0f blendingMode:VnBlendingModeNormal];
    }
    
    // Gradient Map
    @autoreleasepool {
        VnAdjustmentLayerGradientMap* gradientMap = [[VnAdjustmentLayerGradientMap alloc] init];
        [gradientMap addColorRed:7.0f Green:8.0f Blue:8.0f Opacity:100.0f Location:0 Midpoint:50];
        [gradientMap addColorRed:56.0f Green:41.0f Blue:27.0f Opacity:100.0f Location:678 Midpoint:50];
        [gradientMap addColorRed:237.0f Green:221.0f Blue:196.0f Opacity:100.0f Location:3678 Midpoint:50];
        [gradientMap addColorRed:252.0f Green:252.0f Blue:252.0f Opacity:100.0f Location:4096 Midpoint:60];
        
        [self mergeAndSaveTmpImageWithOverlayFilter:gradientMap opacity:0.07f blendingMode:VnBlendingModeHardLight];
    }
    
    // Gradient
    @autoreleasepool {
        VnAdjustmentLayerGradientColorFill* gradientColor = [[VnAdjustmentLayerGradientColorFill alloc] init];
        [gradientColor forceProcessingAtSize:[VnCurrentImage tmpImageSize]];
        [gradientColor setStyle:GradientStyleReflected];
        [gradientColor setAngleDegree:-28.0f];
        [gradientColor setScalePercent:100];
        [gradientColor setOffsetX:90.0f Y:90.0f];
        [gradientColor addColorRed:111.0f Green:0.0f Blue:15.0f Opacity:100.0f Location:0 Midpoint:50];
        [gradientColor addColorRed:0.0f Green:19.0f Blue:28.0f Opacity:0.0f Location:4096 Midpoint:50];
        
        [self mergeAndSaveTmpImageWithOverlayFilter:gradientColor opacity:0.60f blendingMode:VnBlendingModeOverlay];
    }
    
    // Gradient
    @autoreleasepool {
        VnAdjustmentLayerGradientColorFill* gradientColor = [[VnAdjustmentLayerGradientColorFill alloc] init];
        [gradientColor forceProcessingAtSize:[VnCurrentImage tmpImageSize]];
        [gradientColor setStyle:GradientStyleReflected];
        [gradientColor setAngleDegree:-28.0f];
        [gradientColor setScalePercent:100];
        [gradientColor setOffsetX:-30.0f Y:-30.0f];
        [gradientColor addColorRed:111.0f Green:0.0f Blue:15.0f Opacity:100.0f Location:0 Midpoint:50];
        [gradientColor addColorRed:0.0f Green:19.0f Blue:28.0f Opacity:0.0f Location:4096 Midpoint:50];
        
        [self mergeAndSaveTmpImageWithOverlayFilter:gradientColor opacity:0.60f blendingMode:VnBlendingModeOverlay];
    }
    
    // Gradient
    @autoreleasepool {
        VnAdjustmentLayerGradientColorFill* gradientColor = [[VnAdjustmentLayerGradientColorFill alloc] init];
        [gradientColor forceProcessingAtSize:[VnCurrentImage tmpImageSize]];
        [gradientColor setStyle:GradientStyleRadial];
        [gradientColor setAngleDegree:0.0f];
        [gradientColor setScalePercent:100];
        [gradientColor setOffsetX:0.0f Y:0.0f];
        [gradientColor addColorRed:255.0f Green:255.0f Blue:255.0f Opacity:100.0f Location:0 Midpoint:50];
        [gradientColor addColorRed:255.0f Green:255.0f Blue:255.0f Opacity:0.0f Location:4096 Midpoint:50];
        
        [self mergeAndSaveTmpImageWithOverlayFilter:gradientColor opacity:0.24f blendingMode:VnBlendingModeSoftLight];
    }
    
    return [VnCurrentImage tmpImage];
}

@end
