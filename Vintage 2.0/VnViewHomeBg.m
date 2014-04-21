//
//  UIHomeBgView.m
//  winterpix
//
//  Created by SSC on 2014/04/11.
//  Copyright (c) 2014年 SSC. All rights reserved.
//

#import "VnViewHomeBg.h"

@implementation VnViewHomeBg

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    LOG(@"drawRect!");
    NSString* filename;
    
    if (_type == VnViewHomeBgTypeSplash) {
        if ([UIDevice resolution] == UIDeviceResolution_iPhoneRetina4) {
            filename = @"Default@2x.png";
        }else if([UIDevice resolution] == UIDeviceResolution_iPhoneRetina5){
            filename = @"Default-568h@2x.png";
        }else if([UIDevice resolution] == UIDeviceResolution_iPadStandard){
            filename = @"Default-Portrait.png";
        }else if([UIDevice resolution] == UIDeviceResolution_iPadRetina){
            filename = @"Default-Portrait@2x.png";
        }
        
    }else if(_type == VnViewHomeBgTypeGeneral){
        if ([UIDevice resolution] == UIDeviceResolution_iPhoneRetina4) {
            filename = @"Bg@2x.png";
        }else if([UIDevice resolution] == UIDeviceResolution_iPhoneRetina5){
            filename = @"Bg-568h@2x.png";
        }else if([UIDevice resolution] == UIDeviceResolution_iPadStandard){
            filename = @"Bg-Portrait.png";
        }else if([UIDevice resolution] == UIDeviceResolution_iPadRetina){
            filename = @"Bg-Portrait@2x.png";
        }
    }
    NSString* snowPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:filename];
    
    UIImage* imageBg = [[UIImage alloc] initWithContentsOfFile:snowPath];
    [imageBg drawInRect:rect];
}


@end