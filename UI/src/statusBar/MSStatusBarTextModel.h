//
//  EMStatusBarData.h
//  UI
//
//  Created by Samuel on 15/4/9.
//  Copyright (c) 2015年 Samuel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSStatusBarModel.h"

@interface MSStatusBarTextModel : NSObject <MSStatusBarModel>

- (UIView<MSStatusBarUpdating> *)statusBarWithData:(id<MSStatusBarModel>)data;
@end
