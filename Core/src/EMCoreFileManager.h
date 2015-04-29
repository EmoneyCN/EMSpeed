//
//  EMCoreFileManager.h
//  Core
//
//  Created by Mac mini 2012 on 15-3-9.
//  Copyright (c) 2015年 Mac mini 2012. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  与文件管理相关的一些工具方法
 */


#ifdef __cplusplus
extern "C" {
#endif
    
    /**
     *  文件路径URL
     *
     *  @param path 文件路径
     *
     *  @return 文件URL
     */
    NSURL* EMFileURL(NSString *path);
    
    
    /**
     *  文件是否存在
     *
     *  @param filePath 文件路径
     *
     *  @return 文件是否存在
     */
    BOOL EMIsFileExistAtPath(NSString *filePath);
    
    
    /**
     *  从main bundle中读取文件(数组)
     *
     *  @param fileName 文件名
     *
     *  @return 数组格式
     */
    NSArray* EMArrayFromMainBundle(NSString *fileName);
    
    
    /**
     *  从main bundle中读取文件(字典)
     *
     *  @param fileName 文件名
     *
     *  @return 字典格式
     */
    NSDictionary* EMDictionaryFromMainBundle(NSString *fileName);
    
    
    /**
     *  从caches文件夹中读取文件(数组)
     *
     *  @param filename 文件名
     *
     *  @return 数组格式
     */
    NSArray* EMArrayFromCachesDirectory(NSString *filename);
    
    
    /**
     *  从caches文件夹中读取文件(字典)
     *
     *  @param filename 文件名
     *
     *  @return 字典格式
     */
    NSDictionary* EMDictionaryFromDocumentDirectory(NSString *filename);
    
    
    /**
     *  将数组保存到caches文件夹中
     *
     *  @param filename 文件名
     *  @param array    数组
     *
     *  @return 是否成功
     */
    BOOL EMSaveArrayToCachesDirectory(NSString *filename, NSArray *array);
    
    
    
    /**
     *  将字典保存到caches文件夹中
     *
     *  @param filename   文件名
     *  @param dictionary 字典
     *
     *  @return 是否成功
     */
    BOOL EMSaveDictionaryToCachesDirectory(NSString *filename, NSDictionary *dictionary);
    
    
    /**
     *  创建文件夹
     *
     *  @param dir 文件夹路径
     *
     *  @return 是否成功
     */
    BOOL EMFileManagerCreateDirectory(NSString *dir);
    
    
    /**
     *  删除文件夹
     *
     *  @param dir 文件夹路径
     *
     *  @return 是否成功
     */
    BOOL EMFileManagerRemoveDirectory(NSString *dir);
    
    
    /**
     *  删除文件
     *
     *  @param 文件路径
     *
     *  @return 是否成功
     */
    BOOL EMFileManagerRemoveFile(NSString *filePath);
    
    
    /**
     *  保存文件
     *
     *  @param file 文件路径
     *  @param data 数据
     *
     *  @return 是否成功
     */
    BOOL EMFileManagerSaveFile(NSString *filePath, NSData *data);
    
    
    /**
     *  获取从文件中读取数据
     *
     *  @param filePath 文件路径
     *
     *  @return 数据
     */
    NSData *EMFileManagerFileAtPath(NSString *filePath);
    
    
    /**
     *  保存图片到默认路径下
     *
     *  @param filename 文件名
     *  @param image 图片名
     *
     *  @return 是否成功
     */
    BOOL EMFileManagerSaveImage(NSString *filename, UIImage *image);
    
    
    /**
     *  读取图片
     *
     *  @param filePath 图片路径, 默认图片路径caches/pic/, 可以通过EMSetDefaultImageDirectory设置
     *
     *  @return 图片
     */
    UIImage* EMFileManagerLoadImage(NSString *filename);
    
    
    /**
     *  设置一个默认的图片保存路径
     *
     *  @param directory 默认的图片路径
     */
    void EMSetDefaultImageDirectory(NSString *directory); // caches/pic/
    
    
    /**
     *  删除文件
     *
     *  @param filePath 文件路径     
     *
     *  @return 是否成功
     */
    BOOL EMFileManagerRemoveFile(NSString *filePath);
    
    
    /**
     *  保存文件
     *
     *  @param filePath 文件路径
     *  @param data 数据
     *
     *  @return 是否成功
     */
    BOOL EMFileManagerSaveFile(NSString *filePath, NSData *data);
    
    
    /**
     *  读取文件
     *
     *  @param filePath 文件路径
     *
     *  @return 数据
     */
    NSData *EMFileManagerFileAtPath(NSString *filePath);
    
    
    /**
     *  保存图片到默认的图片路径下
     *
     *  @param filePath 文件路径
     *  @param image 图片
     *
     *  @return 是否成功
     */
    BOOL EMFileManagerSaveImage(NSString *filename, UIImage *image);
    
    
    /**
     *  从默认的图片路径下读取图片
     *
     *  @param filename 文件名
     *
     *  @return 图片
     */
    UIImage* EMFileManagerLoadImage(NSString *filename);
    
    
    /**
     *  设置默认的图片路径
     *
     *  @param directory 文件夹名
     *
     */
    void EMSetDefaultImageDirectory(NSString *directory);
    
    
    /**
     *  获取默认的图片路径
     *
     *  @return 默认的图片路径
     *
     */
    NSString* EMGetDefaultImageDirectory();
    
    
    
#ifdef __cplusplus
}
#endif