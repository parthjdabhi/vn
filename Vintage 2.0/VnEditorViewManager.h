//
//  VnEditorViewManager.h
//  Vintage 2.0
//
//  Created by SSC on 2014/04/20.
//  Copyright (c) 2014年 SSC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VnEditorSliderManager.h"


@interface VnEditorViewManager : NSObject

@property (nonatomic, weak) UIView* view;

+ (VnEditorViewManager*)instance;

- (void)layout;

@end
