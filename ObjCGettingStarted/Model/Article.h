//
//  Article.h
//  ObjCGettingStarted
//
//  Created by Keenan Cookson on 2019/08/01.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Article : NSObject
@property (nonatomic, strong) NSString *author;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *articleDescription;

- (instancetype)initWithAuthor:(NSString *)author
                         title:(NSString *)title
            articleDescription:(NSString *)articleDescription;
@end

NS_ASSUME_NONNULL_END
