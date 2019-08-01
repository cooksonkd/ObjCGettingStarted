//
//  Article.m
//  ObjCGettingStarted
//
//  Created by Keenan Cookson on 2019/08/01.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

#import "Article.h"

@implementation Article
- (instancetype)initWithAuthor:(NSString *)author
                         title:(NSString *)title
            articleDescription:(NSString *)articleDescription
{
    self = [super init];
    if (self) {
        self.author = author;
        self.title = title;
        self.articleDescription = articleDescription;
    }
    return self;
}
@end
