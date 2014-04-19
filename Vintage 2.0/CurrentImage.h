//
//  CurrentImage.h
//  Vintage
//
//  Created by SSC on 2014/04/03.
//  Copyright (c) 2014年 SSC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CurrentImage : NSObject

@property (nonatomic, assign) CGSize originalImageSize;

+ (CurrentImage*)instance;
+ (BOOL)lastSavedImageExists;
+ (BOOL)originalImageExists;
+ (UIImage*)imageAtPath:(NSString*)path;
+ (UIImage*)resizedImageForEditor;
+ (UIImage*)resizedProcessedImageForEditor;
+ (UIImage*)resizedBlurredImageForEditor;
+ (UIImage*)originalImage;
+ (UIImage*)lastSavedImage;
+ (UIImage*)dialogBgImage;
+ (BOOL)saveOriginalImage:(UIImage*)image;
+ (BOOL)saveResizedEditorImage:(UIImage*)image;
+ (BOOL)saveResizedProcessedEditorImage:(UIImage*)image;
+ (BOOL)saveResizedBlurredEditorImage:(UIImage*)image;
+ (BOOL)saveLastSavedImage:(UIImage*)image;
+ (BOOL)saveDialogBgImage:(UIImage*)image;
+ (CGSize)originalImageSize;
+ (CGSize)editorImageSize;
+ (BOOL)deleteImageAtPath:(NSString*)path;
+ (BOOL)deleteLastSavedImage;
+ (BOOL)deleteOriginalImage;
+ (BOOL)deleteDialogBgImage;
+ (BOOL)deleteResizedForEditorImage;
+ (BOOL)deleteResizedProcessedForEditorImage;
+ (BOOL)deleteResizedBlurredForEditorImage;
+ (void)clean;

@end