//
//  VnVIewEditorToolBar.h
//  Vintage 2.0
//
//  Created by SSC on 2014/04/21.
//  Copyright (c) 2014年 SSC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VnViewEditorToolBarButton.h"
#import "VnViewHitThroughScroll.h"

@interface VnViewEditorToolBar : UIView
{
    float _right;
}
@property (nonatomic, strong) VnViewHitThroughScroll* view;
@property (nonatomic, assign) int stage;
@property (nonatomic, weak) VnViewEditorToolBarButton* currentOpeningButton;

- (void)appendButton:(VnViewEditorToolBarButton*)button;
- (void)openButton:(VnViewEditorToolBarButton*)button;

@end
