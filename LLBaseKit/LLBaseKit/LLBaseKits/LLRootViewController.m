//
//  LLRootViewController.m
//  Pension
//
//  Created by Eve on 2017/12/28.
//  Copyright © 2017年 lilun. All rights reserved.
//

#import "LLRootViewController.h"
@interface LLRootViewController ()

@end

@implementation LLRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor colorWithRed:249/255.0f green:249/255.0f blue:249/255.0f alpha:1];

}

/**
 *  懒加载UITableView
 *
 *  @return UITableView
 */
- (UITableView *)tableView
{
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0);
        _tableView.estimatedRowHeight = 44;
        _tableView.rowHeight = UITableViewAutomaticDimension;
        
        _tableView.estimatedSectionHeaderHeight = 0;
        _tableView.estimatedSectionFooterHeight = 0;

//        头部刷新
        MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(headerRereshing)];
        header.automaticallyChangeAlpha = YES;
        header.lastUpdatedTimeLabel.hidden = YES;
        _tableView.mj_header = header;

        //底部刷新
        _tableView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(footerRereshing)];
                _tableView.contentInset = UIEdgeInsetsMake(0, 0, 30, 0);
                _tableView.mj_footer.ignoredScrollViewContentInsetBottom = 30;

        _tableView.backgroundColor=self.view.backgroundColor;
        _tableView.scrollsToTop = YES;
        _tableView.tableFooterView = [[UIView alloc] init];
    }
    return _tableView;
}



///**
// *  懒加载collectionView
// *
// *  @return collectionView
// */
//- (UICollectionView *)collectionView
//{
//    if (_collectionView == nil) {
//        UICollectionViewFlowLayout *flow = [[UICollectionViewFlowLayout alloc] init];
//
//        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth , KScreenHeight - kTopHeight - kTabBarHeight) collectionViewLayout:flow];
//
//        MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(headerRereshing)];
//        header.automaticallyChangeAlpha = YES;
//        header.lastUpdatedTimeLabel.hidden = YES;
//        header.stateLabel.hidden = YES;
//        _collectionView.mj_header = header;
//
//        //底部刷新
//        _collectionView.mj_footer = [MJRefreshAutoStateFooter footerWithRefreshingTarget:self refreshingAction:@selector(footerRereshing)];
//
//        //#ifdef kiOS11Before
//        //
//        //#else
//        //        _collectionView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
//        //        _collectionView.contentInset = UIEdgeInsetsMake(64, 0, 49, 0);
//        //        _collectionView.scrollIndicatorInsets = _collectionView.contentInset;
//        //#endif
//
//        _collectionView.backgroundColor=CViewBgColor;
//        _collectionView.scrollsToTop = YES;
//    }
//    return _collectionView;
//}
-(void)headerRereshing{

}

-(void)footerRereshing{

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
