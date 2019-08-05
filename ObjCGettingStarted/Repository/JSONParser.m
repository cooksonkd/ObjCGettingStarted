//
//  JSONParser.m
//  ObjCGettingStarted
//
//  Created by Keenan Cookson on 2019/08/05.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

#import "JSONParser.h"

@implementation JSONParser
- (instancetype)initWithPathForResource:(NSString *)pathForResource
                                 ofType:(NSString *)ofType
{
    self = [super init];
    if (self) {
        NSString *path = [[NSBundle mainBundle] pathForResource:pathForResource
                                                         ofType:ofType];
        
        NSString *jsonString = [[NSString alloc] initWithContentsOfFile:path
                                                               encoding:NSUTF8StringEncoding
                                                                  error:nil];
        
        NSData* jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
        
        self.jsonData = jsonData;
    }
    return self;
}

- (instancetype)initWithJSONData:(NSData *)jsonData
{
    self = [super init];
    if (self) {
        self.jsonData = jsonData;
    }
    return self;
}
@end
