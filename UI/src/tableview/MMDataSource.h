//
//  MMDatasource.h
//  EMStock
//
//  Created by Mac mini 2012 on 15-2-13.
//  Copyright (c) 2015年 flora. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MMCellModel.h"
#import "MMCellUpdating.h"

/**
 *  tableview的数据
 */

@interface MMDataSource : NSObject<UITableViewDataSource> {
    
    NSMutableArray *_sections;
    NSMutableArray *_items;
    
}

/**
 *  section 的数组，每个section是NSString
 */
@property (nonatomic, strong, readonly) NSArray *sections;


/**
 *  items 的数组, 每个item都是id<CellModel>的NSArray
 */
@property (nonatomic, strong, readonly) NSArray *items;


/**
 *  初始化
 *
 *  @param aItems    id<MMCellModel>数组
 *  @param aSections section数组
 *
 *  @return MMDataSource
 */
- (instancetype)initWithItems:(NSArray *)aItems sections:(NSArray *)aSections;


/**
 *  取section标题
 *
 *  @param section section的下标
 *
 *  @return section标题
 */
- (NSString *)titleAtSection:(NSUInteger)section;


/**
 *  根据section的标题取下标, 如果重复的返回第一个匹配的
 *
 *  @param title 标题
 *
 *  @return section的下标
 */
- (int)sectionIndexWithTitle:(NSString *)title;


/**
 *  取section下的items
 *
 *  @param section section的下标
 *
 *  @return section下面的items
 */
- (NSArray *)itemsAtSection:(int)section;


/**
 *  取某个title下面的items
 *
 *  @param title section的title名称
 *
 *  @return 某个section的title下面的items
 */
- (NSArray *)itemsAtSectionWithTitle:(NSString *)title;


/**
 *  根据indexPath取某个item
 *
 *  @param indexPath 下标
 *
 *  @return 某个实现MMCellModel 协议的item
 */
- (id <MMCellModel>)itemAtIndexPath:(NSIndexPath *)indexPath;


/**
 *  根据index取某个item, section下标默认为0
 *
 *  @param indexPath 下标
 *
 *  @return 某个实现MMCellModel 协议的item
 */
- (id <MMCellModel>)itemAtIndex:(NSUInteger)index;


/**
 *  某个section下面items的个数
 *
 *  @param section section下标
 *
 *  @return items个数
 */
- (NSUInteger)numberOfItemsAtSection:(NSUInteger)section;


/**
 *  给tableview 注册cell的identifier
 */
- (void)registerCellForView:(UIView *)view;

@end
