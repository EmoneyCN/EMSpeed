//
//  ViewController.h
//  MMTableViewDemo
//
//  Created by Mac mini 2012 on 15-2-26.
//  Copyright (c) 2015年 Mac mini 2012. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSTableController.h"
#import "MMInfoCell.h"
@class MMInfoModel;
@interface MMInfoViewController : MSTableController <MMInfoCellDelegate> {
    MMInfoModel *_model;
}

@property (nonatomic, strong) Class infoModelClass;

@end

