//
//  MMTableEmptyView.m
//  MMTableViewDemo
//
//  Created by Samuel on 15/4/30.
//  Copyright (c) 2015年 Mac mini 2012. All rights reserved.
//

#import "MMTableEmptyView.h"

@implementation MMTableEmptyView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        UILabel *label = [[UILabel alloc] initWithFrame:self.bounds];
        label.backgroundColor = [UIColor whiteColor];
        label.textColor = [UIColor lightGrayColor];
        label.text = @"暂无数据";
        label.textAlignment = NSTextAlignmentCenter;
        label.font = [UIFont systemFontOfSize:12];
        [self addSubview:label];
        _textlabel = label;
        
        
        NSString *imageName = [@"EMUIResources.bundle" stringByAppendingPathComponent:@"message_tips_nodata.png"];
        UIImage *image = [UIImage imageNamed:imageName];
        UIImageView *imgv = [[UIImageView alloc] initWithImage:image];
        [label addSubview:imgv];
        imgv.center = CGPointMake(CGRectGetMidX(label.frame), CGRectGetMidY(label.frame) - 20 - imgv.frame.size.height/2);
        
        [self addSubview:imgv];
        _iconImageView = imgv;
    }
    
    return self;
}



@end
