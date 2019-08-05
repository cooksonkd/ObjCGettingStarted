//
//  TopHeadlinesTableViewController.h
//  ObjCGettingStarted
//
//  Created by Keenan Cookson on 2019/08/01.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Article.h"

NS_ASSUME_NONNULL_BEGIN

@protocol TopHeadlinesTableViewControllerDelegate <NSObject>

- (void)configureWithArticle:(Article *)article;

@end

@interface TopHeadlinesTableViewController : UITableViewController
@property (weak, nonatomic) id <TopHeadlinesTableViewControllerDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
