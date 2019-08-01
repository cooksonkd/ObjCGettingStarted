//
//  Book.h
//  ObjCGettingStarted
//
//  Created by Keenan Cookson on 2019/08/01.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject
@property (nonatomic) NSString *title;
@property (nonatomic) Person *author;
@property (nonatomic) int yearOfPublication;

-(instancetype)initWithTitle:(NSString *)title
                      author:(Person *)author
           yearOfPublication:(int)yearOfPublication;
@end

NS_ASSUME_NONNULL_END
