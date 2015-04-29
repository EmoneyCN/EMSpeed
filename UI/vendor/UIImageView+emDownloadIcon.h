//
//  UIImageView+emDownloadIcon.h
//  EMStock
//
//  Created by flora on 14-10-12.
//  Copyright (c) 2014年 flora. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImageView+WebCache.h"

@interface UIImageView (emDownloadIcon)

/**
 *根据服务端返回的图片配置信息设置图片
 *优先从本地读取本地图片，如果读取失败，从网络获取配置图片
 *从网络获取图片失败显示默认图片
 */
- (void)em_setIconWithUrlString:(NSString *)icon placeHolderImage:(UIImage *)placeHolder;

- (void)em_setIconWithUrlString:(NSString *)icon;

/**
 *与以上两个方法相同，但适用于较大尺寸的图标,默认图片是 defaultPlaceholder
 */
- (void)em_setImageWithURLString:(NSString *)urlstring;

/**
 *localCache 是否支持本地缓存图片，如果支持本地缓存，先从本地目录读取图片。如果本地没有则从网络获取，获取成功后将图片保存到本地目录
 */
- (void)em_setImageWithURL:(NSURL *)url localCache:(BOOL)localCache placeholderImage:(UIImage *)placeholderImage options:(SDWebImageOptions)options;
- (void)em_setImageWithURL:(NSURL *)url localCache:(BOOL)localCache placeholderImage:(UIImage *)placeholderImage;
- (void)em_setImageWithURL:(NSURL *)url localCache:(BOOL)localCache;

/**
 *  先使用icon查找本地图片,若不存在,则使用urlString来请求网络图片
 *
 *  @param icon        本地icon
 *  @param urlString   网络图片url
 *  @param placeHolder 占位图片
 */
- (void)em_setIconWithIcon:(NSString*)icon urlString:(NSString *)urlString placeHolderImage:(UIImage *)placeHolder;

@end

