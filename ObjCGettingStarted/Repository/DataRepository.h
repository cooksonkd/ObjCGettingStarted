//
//  DataRepository.h
//  ObjCGettingStarted
//
//  Created by Keenan Cookson on 2019/08/05.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Article.h"

NS_ASSUME_NONNULL_BEGIN

@interface DataRepository : NSObject
@property (nonatomic, strong) NSMutableArray<Article *> *articleArray;

- (instancetype)init;
@end

NS_ASSUME_NONNULL_END
