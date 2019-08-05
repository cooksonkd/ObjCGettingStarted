//
//  JSONParser.h
//  ObjCGettingStarted
//
//  Created by Keenan Cookson on 2019/08/05.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JSONParser : NSObject
@property (nonatomic) NSData *jsonData;

- (instancetype)initWithPathForResource:(NSString *)pathForResource
                                 ofType:(NSString *)ofType;

- (instancetype)initWithJSONData:(NSData *)jsonData;
@end

NS_ASSUME_NONNULL_END
