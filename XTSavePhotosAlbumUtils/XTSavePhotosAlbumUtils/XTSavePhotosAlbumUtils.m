//
//  SavePhotosTool.m
//  YiXingTravel
//
//  Created by 何凯楠 on 2017/3/10.
//  Copyright © 2017年 HeXiaoBa. All rights reserved.
//

#import "XTSavePhotosAlbumUtils.h"

@implementation XTSavePhotosAlbumUtils

+ (void)xt_saveImageToPhotos:(UIImage *)image {
    UIImageWriteToSavedPhotosAlbum(image, [XTSavePhotosAlbumUtils class], @selector(image:didFinishSavingWithError:contextInfo:), nil);
}

// 监听保存完成，必须实现这个方法
+ (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    if (error) {
        NSLog(@"保存图片失败");
//        [NSObject hudClass_showMessage:@"存图片失败"];
    } else {
        NSLog(@"保存图片成功");
//        [NSObject hudClass_showMessage:@"保存图片成功"];
    }
}

/**
 保存视频到相册

 @param videoPath 视频路径
 */
+ (void)xt_saveVideoToPhotosAlbum:(NSString *)videoPath {
    UISaveVideoAtPathToSavedPhotosAlbum(videoPath, [XTSavePhotosAlbumUtils class], @selector(video:didFinishSavingWithError:contextInfo:), nil);
}

// 监听保存完成，必须实现这个方法
- (void)video:(NSString *)videoPath didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo {
    if (error) {
        NSLog(@"保存视频失败");
        //        [NSObject hudClass_showMessage:@"存图片失败"];
    } else {
        NSLog(@"保存视频成功");
        //        [NSObject hudClass_showMessage:@"保存图片成功"];
    }
}

@end
