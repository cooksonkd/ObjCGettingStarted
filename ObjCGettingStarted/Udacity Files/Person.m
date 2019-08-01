//
//  Person.m
//  ObjCGettingStarted
//
//  Created by Keenan Cookson on 2019/08/01.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

#import "Person.h"

@implementation Person
-(instancetype)initWithName:(NSString *)name
                   birthday:(NSString *)birthday {
    self = [super init];
    if(self) {
        self.name = name;
        self.birthday = birthday;
    }
    return self;
}
@end
