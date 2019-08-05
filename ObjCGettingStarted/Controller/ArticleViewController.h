//
//  ArticleViewController.h
//  ObjCGettingStarted
//
//  Created by Keenan Cookson on 2019/08/05.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Article.h"
#import "TopHeadlinesTableViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ArticleViewController : UIViewController /**<>*/
- (void)configureWithArticle:(Article *)article;
@end

NS_ASSUME_NONNULL_END
