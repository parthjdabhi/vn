//
//  VnViewHitThroughScroll.m
//  Vintage 2.0
//
//  Created by SSC on 2014/04/24.
//  Copyright (c) 2014年 SSC. All rights reserved.
//

#import "VnViewHitThroughScroll.h"

@implementation VnViewHitThroughScroll

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.showsVerticalScrollIndicator = NO;
        self.showsHorizontalScrollIndicator = NO;
        self.bounces = YES;
        self.userInteractionEnabled = YES;
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    UIView* view = [super hitTest:point withEvent:event];
    if (view == self) {
        return nil;
    }
    return view;
}

- (BOOL)touchesShouldCancelInContentView:(UIView *)view
{
    return ![view isKindOfClass:[UIButton class]];
}

@end