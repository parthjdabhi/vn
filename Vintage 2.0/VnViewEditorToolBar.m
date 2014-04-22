//
//  VnVIewEditorToolBar.m
//  Vintage 2.0
//
//  Created by SSC on 2014/04/21.
//  Copyright (c) 2014年 SSC. All rights reserved.
//

#import "VnViewEditorToolBar.h"

@implementation VnViewEditorToolBar

- (id)init
{
    CGRect frame = CGRectMake(0.0f, 0.0f, [UIScreen width], [VnCurrentSettings barHeight]);
    self = [super initWithFrame:frame];
    if (self) {
        _right = 0.0f;
        self.backgroundColor = [UIColor colorWithRed:s255(32.0f) green:s255(30.0f) blue:s255(30.0f) alpha:1.0];
    }
    return self;
}

- (void)appendButton:(VnViewEditorToolBarButton *)button
{
    if (!button) {
        return;
    }
    [button setX:_right];
    [self addSubview:button];
    _right = [button right];
}

@end
