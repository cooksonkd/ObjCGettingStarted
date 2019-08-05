//
//  TopHeadlinesTableViewCell.m
//  ObjCGettingStarted
//
//  Created by Keenan Cookson on 2019/08/05.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

#import "TopHeadlinesTableViewCell.h"

@implementation TopHeadlinesTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    [self.imageView setTintColor:[UIColor lightGrayColor]];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configureWithArticle:(Article *)article {
    self.authorLabel.text = article.author;
    self.titleLabel.text = article.title;
    self.descriptionLabel.text = article.articleDescription;
}
@end
