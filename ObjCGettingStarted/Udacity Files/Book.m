//
//  Book.m
//  ObjCGettingStarted
//
//  Created by Keenan Cookson on 2019/08/01.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

#import "Book.h"

@implementation Book
-(instancetype)initWithTitle:(NSString *)title
                      author:(Person *)author
           yearOfPublication:(int)yearOfPublication {
    self = [super init];
    return self;
}
@end
