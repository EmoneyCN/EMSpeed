//
//  EMHTTPRequestModel.m
//  EMStock
//
//  Created by Mac mini 2012 on 14-9-19.
//  Copyright (c) 2014年 flora. All rights reserved.
//

#import "MSHTTPRequestModel.h"
#import "MSHTTPResponse.h"
#import "MSHTTPSessionManager.h"

@implementation MSHTTPRequestModel
@synthesize tasks = _tasks;

- (id)init
{
    self = [super init];
    if (self) {
    }
    
    return self;
}

- (void)dealloc
{
    [self cancelTasks];
}

- (void)cancelTasks
{
    for (NSURLSessionTask *task in _tasks) {
        [task cancel];
    }
    
    [_tasks removeAllObjects];
}

- (NSMutableArray *)getTasks
{
    if (_tasks == nil) {
        _tasks = [NSMutableArray array];
    }
    
    return _tasks;
}

- (NSURLSessionTask *)GET:(NSString *)URLString
                        param:(NSDictionary *)param
                        block:(void (^)(MSHTTPResponse *response, NSURLSessionTask *task, BOOL success))block
{
    MSHTTPSessionManager *manager = [MSHTTPSessionManager sharedManager];
    
    NSURLSessionTask *task = [manager GET:URLString param:param block:^(MSHTTPResponse *response, NSURLSessionTask *task, BOOL success) {
        block(response, task, success);
        [self.tasks removeObject:task];
    }];
    [self.tasks addObject:task];

    return task;
}


- (NSURLSessionTask *)POST:(NSString *)URLString
                         param:(NSDictionary *)param
                         block:(void (^)(MSHTTPResponse *response, NSURLSessionTask *task, BOOL success))block
{
    MSHTTPSessionManager *manager = [MSHTTPSessionManager sharedManager];
    
    NSURLSessionTask *task = [manager POST:URLString param:param block:^(MSHTTPResponse *response, NSURLSessionTask *task, BOOL success) {
        block(response, task, success);
        [self.tasks removeObject:task];
    }];
    [self.tasks addObject:task];
    
    return task;
}

@end