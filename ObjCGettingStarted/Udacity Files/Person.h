//
//  Person.h
//  ObjCGettingStarted
//
//  Created by Keenan Cookson on 2019/08/01.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *birthday;

-(instancetype)initWithName:(NSString *)name
                   birthday:(NSString *)birthday;
@end

NS_ASSUME_NONNULL_END
