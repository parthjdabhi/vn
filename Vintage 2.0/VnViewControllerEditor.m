//
//  VnViewControllerEditor.m
//  Vintage 2.0
//
//  Created by SSC on 2014/04/19.
//  Copyright (c) 2014年 SSC. All rights reserved.
//

#import "VnViewControllerEditor.h"

@implementation VnViewControllerEditor

- (id)init
{
    self = [super init];
    if (self) {
        _appeared = NO;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated
{
    if (_appeared == NO) {
        VnEditorViewManager* vm = [VnEditorViewManager instance];
        vm.view = self.view;
        vm.delegate = self;
        [vm commonInit];
        [vm layout];
        
        VnProcessingQueueManager* qm = [VnProcessingQueueManager instance];
        [qm commonInit];
        qm.delegate = self;
    }
    _appeared = YES;
}

- (void)didFinishResizing
{
    [VnEditorProgressManager setResizingProgress:1.0f];
    VnEditorViewManager* vm = [VnEditorViewManager instance];
    [vm setPreviewImage:[VnCurrentImage originalPreviewImage]];
    [vm openAdjustmentToolView:VnAdjustmentToolIdEffects];
    
    VnObjectProcessingQueue* queue = [VnProcessingQueueManager shiftEffectQueue];
    [VnProcessingQueueManager addQueue:queue];
    
}

#pragma mark view delegate

- (void)adjustmentToolViewDidChange:(VnAdjustmentToolId)toolId
{
    
}

#pragma mark queue delegate

- (void)queueDidFinished:(VnObjectProcessingQueue *)queue
{
    LOG(@"Queue did finished.");
    if (queue.type == VnObjectProcessingQueueTypePreset) {
        if (queue.effectId != 0) {
            [VnEditorViewManager setProcessedPresetImage:queue.image ToEffect:queue.effectId];
        }
    } else {
        
    }
    VnObjectProcessingQueue* nextQueue;
    //// add other
    switch ([VnEditorViewManager currentToolId]) {
        case VnAdjustmentToolIdEffects:
            nextQueue = [VnProcessingQueueManager shiftEffectQueue];
            break;
        default:
            break;
    }
    if (nextQueue) {
        [VnProcessingQueueManager addQueue:nextQueue];
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    VnEditorViewManager* vm = [VnEditorViewManager instance];
    [vm clean];
    vm.delegate = nil;
    vm.view = nil;
    
    VnProcessingQueueManager* qm = [VnProcessingQueueManager instance];
    [qm reset];
    qm.delegate = nil;
}

@end
