//
//  VnViewEditorEffectPresetItemView.m
//  Vintage 2.0
//
//  Created by SSC on 2014/04/23.
//  Copyright (c) 2014年 SSC. All rights reserved.
//

#import "VnViewEditorEffectPresetItemView.h"

@implementation VnViewEditorEffectPresetItemView

- (id)initWithEffect:(VnObjectEffect *)effect
{
    self = [super initWithFrame:[VnEditorViewManager presetImageViewBounds]];
    if (self) {
        _imageView = [[UIImageView alloc] initWithFrame:[VnEditorViewManager presetImageBounds]];
        _imageView.backgroundColor = [UIColor blackColor];
        [_imageView setX:[VnEditorViewManager presetImageViewPaddingLeft]];
        [_imageView setY:[VnEditorViewManager presetImageViewPaddingTop]];
        [self addSubview:_imageView];
        _progressView = [[VnViewProgress alloc] initWithFrame:[VnEditorViewManager presetImageBounds] Radius:[VnCurrentSettings thumbnailProgressRadius]];
        [_imageView addSubview:_progressView];
        [self addTarget:self action:@selector(didTouchUpInside:) forControlEvents:UIControlEventTouchUpInside];
        
        float top = [VnEditorViewManager presetImageBounds].size.height + [VnEditorViewManager presetImageViewPaddingTop];
        float height = [VnEditorViewManager presetImageViewBounds].size.height - top;
        _titleLabel = [[VnViewLabel alloc] initWithFrame:CGRectMake(0.0f, top, [VnEditorViewManager presetImageViewBounds].size.width, height)];
        _titleLabel.text = effect.name;
        [self addSubview:_titleLabel];
    }
    return self;
}

- (void)setImage:(UIImage *)image
{
    _imageView.image = image;
}

- (void)removeProgress
{
    [_progressView removeFromSuperview];
}

- (void)didTouchUpInside:(UIButton *)sender
{
    
}

@end