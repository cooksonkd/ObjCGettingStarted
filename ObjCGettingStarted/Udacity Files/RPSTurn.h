//
//  RPSTurn.h
//  ObjCGettingStarted
//
//  Created by Keenan Cookson on 2019/08/01.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, Move) {
    Rock,
    Paper,
    Scissors
};

NS_ASSUME_NONNULL_BEGIN

@interface RPSTurn : NSObject
@property (nonatomic) Move move;

- (instancetype)initWithMove:(Move) move;
@end

NS_ASSUME_NONNULL_END
