//
//  EMInfoNewsCell.m
//  EMStock
//
//  Created by Mac mini 2012 on 14-10-29.
//  Copyright (c) 2014年 flora. All rights reserved.
//

#import "EMInfoNewsCell.h"
#import "MMCellUpdating.h"
#import "EMInfoNewsItem.h"
#import "NSDate+string.h"

@implementation EMInfoNewsCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
	}
	return self;
}

- (void)update:(id<MMCellModel>)cellModel
{
    if ([cellModel isKindOfClass:[EMInfoNewsItem class]]) {
        
        EMInfoNewsItem *item = cellModel;
        self.titleLabel.text = item.title;
        self.contentLabel.text = item.summary;
        self.timeLabel.text = item.date;
        self.jianLabel.text = item.jianText;
    }
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    self.titleLabel.frame = CGRectMake(15, 9, self.frame.size.width-15*2, 17);
}

@end



