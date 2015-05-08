//
//  EMModelProtocol.h
//  UIDemo
//
//  Created by Mac mini 2012 on 15-5-8.
//  Copyright (c) 2015年 Samuel. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol EMModelProtocol <NSObject>

@optional

+ (id)modelWithBlock:(void (^)(NSOperation *operation, BOOL success))block;
- (id)modelWithBlock:(void (^)(NSOperation *operation, BOOL success))block;

@end
