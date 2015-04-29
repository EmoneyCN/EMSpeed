//
//  EMCollectionPagingViewController.m
//  UI
//
//  Created by Samuel on 15/4/17.
//  Copyright (c) 2015年 Samuel. All rights reserved.
//

#import "EMCollectionPagingViewController.h"
#import "EMHorizontalPagingView.h"
#import "EMImageCollectionItem.h"
#import "MMCollectionDataSource.h"
#import "EMCollectionViewTestItem.h"
#import "EMCollectionViewTestItem2.h"

@interface EMCollectionPagingViewController () {
    MMCollectionDataSource *_ds0;
    MMCollectionDataSource *_ds1;
}

@end

@implementation EMCollectionPagingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self createPaging0];
    [self createPaging1];
}

- (void)createPaging0
{
    EMHorizontalPagingView *pagingView = [[EMHorizontalPagingView alloc] initWithFrame:CGRectMake(0, 0, EMScreenWidth(), 140)];
    [self.view addSubview:pagingView];
    
    NSMutableArray *marr = [NSMutableArray array];
    
    for (int i=0; i<3; i++) {
        EMImageCollectionItem *item = [[EMImageCollectionItem alloc] init];
        item.title = @"下载的图片...";
        if (i==0) {
            item.imageURL = @"http://static.emoney.cn/www/news_market/news_img/201504/952d1319-3617-4ce6-b9cd-8ff72ca07de1_t.png";
        }
        else if (i==1) {
            item.imageURL = @"http://static.emoney.cn/www/news_market/news_img/201504/75638aaf-af70-4bae-a822-a7a8d227b0e3_t.png";
        }
        else if (i==2) {
            item.imageURL = @"http://static.emoney.cn/www/news_market/news_img/201504/990c99c8-f7b8-40de-ae4d-9b05fd947194_t.png";
        }
        [marr addObject:item];
    }
    
    NSArray *items = [NSArray arrayWithArray:marr];
    
    _ds0 = [[MMCollectionDataSource alloc] initWithItems:@[items] sections:@[@""]];
    [pagingView setDataSource:_ds0];
    
    pagingView.didTapBlock = ^(id<MMCollectionCellModel> model, NSIndexPath *indexPath) {
        if ([model isKindOfClass:[EMImageCollectionItem class]]) {
            NSLog(@"风格1 第%ld页", indexPath.row);
        }
    };
}


- (void)createPaging1
{
    EMHorizontalPagingView *pagingView = [[EMHorizontalPagingView alloc] initWithFrame:CGRectMake(0, 150, EMScreenWidth(), 140)];
    [self.view addSubview:pagingView];
    
    NSMutableArray *marr = [NSMutableArray array];
    
    for (int i=0; i<10; i++) {
        if(i%3==0) {
            EMCollectionViewTestItem *item = [[EMCollectionViewTestItem alloc] init];
            item.title = @"风格1";
            item.imgName = @"11.jpg";
            [marr addObject:item];
        }
        else if (i%3==1){
            EMImageCollectionItem *item = [[EMImageCollectionItem alloc] init];
            item.imageURL = @"11.jpg";
            item.title = @"风格2";
            [marr addObject:item];
        }
        else if (i%3==2){
            EMCollectionViewTestItem2 *item = [[EMCollectionViewTestItem2 alloc] init];
            item.title = @"风格3";
            [marr addObject:item];
        }
    }
    
    NSArray *items = [NSArray arrayWithArray:marr];
    
    _ds1 = [[MMCollectionDataSource alloc] initWithItems:@[items] sections:@[@""]];
    [pagingView setDataSource:_ds1];
    
    pagingView.didTapBlock = ^(id<MMCollectionCellModel> model, NSIndexPath *indexPath) {
        if ([model isKindOfClass:[EMCollectionViewTestItem class]]) {
            NSLog(@"风格1 第%ld页", indexPath.row);
        }
        if ([model isKindOfClass:[EMImageCollectionItem class]]) {
            NSLog(@"风格2 第%ld页", indexPath.row);
        }
        if ([model isKindOfClass:[EMCollectionViewTestItem2 class]]) {
            NSLog(@"风格3 第%ld页", indexPath.row);
        }
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
