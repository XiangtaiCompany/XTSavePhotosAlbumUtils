//
//  SavePhotosTool.h
//  YiXingTravel
//
//  Created by 何凯楠 on 2017/3/10.
//  Copyright © 2017年 HeXiaoBa. All rights reserved.
//  保存图片到相册中

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface XTSavePhotosAlbumUtils : NSObject

/**
 保存图片到相册

 @param image image
 */
+ (void)xt_saveImageToPhotos:(UIImage *)image;

/**
 保存视频到相册
 
 @param videoPath 视频路径
 */
+ (void)xt_saveVideoToPhotosAlbum:(NSString *)videoPath;

@end
