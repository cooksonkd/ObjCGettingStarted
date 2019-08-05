//
//  ArticleViewController.m
//  ObjCGettingStarted
//
//  Created by Keenan Cookson on 2019/08/05.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

#import "ArticleViewController.h"

@interface ArticleViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@property (nonatomic) NSString *articleTitle;
@property (nonatomic) NSString *articleAuthor;
@property (nonatomic) NSString *articleDescription;
//@property (nonatomic) TopHeadlinesTableViewController *topHeadlinesTableViewController;
@end

@implementation ArticleViewController
@synthesize titleLabel;
@synthesize authorLabel;
@synthesize descriptionLabel;
@synthesize articleTitle;
@synthesize articleAuthor;
@synthesize articleDescription;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.topHeadlinesTableViewController = [[TopHeadlinesTableViewController alloc] init];
//    self.topHeadlinesTableViewController.delegate = self;
    self.titleLabel.text = articleTitle;
    self.authorLabel.text = articleAuthor;
    self.descriptionLabel.text = articleDescription;
}

- (void)configureWithArticle:(Article *)article {
    self.articleTitle = article.title;
    self.articleAuthor = article.author;
    self.articleDescription = article.articleDescription;
}

//- (void)setArticleWithTitle:(NSString *)articleTitle
//          articleAuthor:(NSString *)articleAuthor
//     articleDescription:(NSString *)articleDescription {
//    self.titleLabel.text = articleTitle;
//    self.authorLabel.text = articleAuthor;
//    self.descriptionLabel.text = articleDescription;
//}

@end
