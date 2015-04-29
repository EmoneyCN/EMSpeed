//
//  EMHTTPRequestModel.m
//  EMStock
//
//  Created by Mac mini 2012 on 14-9-19.
//  Copyright (c) 2014年 flora. All rights reserved.
//

#import "EMHTTPRequestModel.h"
#import "EMHTTPResponse.h"

@implementation EMHTTPRequestModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    
    return self;
}

- (AFHTTPRequestOperation *)GET:(NSString *)URLString
                          param:(NSDictionary *)param
                          block:(void (^)(id respondObject, AFHTTPRequestOperation *operation, BOOL success))block
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    return [manager GET:URLString parameters:param success:^(AFHTTPRequestOperation *operation, id responseObject) {
        BOOL flag = [self parseResponseObject:responseObject URL:URLString];
        block(responseObject, operation, flag);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        block(nil, operation, NO);
    }];
}

- (AFHTTPRequestOperation *)POST:(NSString *)URLString
                           param:(NSDictionary *)param
                           block:(void (^)(id respondObject, AFHTTPRequestOperation *operation, BOOL success))block
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    return [manager POST:URLString parameters:param success:^(AFHTTPRequestOperation *operation, id responseObject) {
        BOOL flag = [self parseResponseObject:responseObject URL:URLString];
        block(responseObject, operation, flag);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        block(nil, operation, NO);
    }];
}

- (BOOL)parseResponseObject:(id)responseObject
                        URL:(NSString *)URLString
{
    if ([EMHTTPResponse isStandardResponse:responseObject]) {
        EMHTTPResponse *response = [EMHTTPResponse responseWithResponseObject:responseObject];
        return [self parseHTTPResponse:response URL:URLString];
    }
    else{
        NSAssert(0, @"非标准格式, 具体由子类自己重写吧!");
    }
    
    return NO;
}


- (BOOL)parseHTTPResponse:(EMHTTPResponse *)response
                      URL:(NSString *)URLString
{
    NSAssert(0, @"子类请自己实现具体内容的解析!");
    return NO;
}

@end