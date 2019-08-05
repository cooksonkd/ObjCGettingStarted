//
//  DataRepository.m
//  ObjCGettingStarted
//
//  Created by Keenan Cookson on 2019/08/05.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

#import "DataRepository.h"

@implementation DataRepository
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.articleArray = [[NSMutableArray alloc] init];
        
        Article *articleOne = [[Article alloc] initWithAuthor:@""
                                                        title:@"Chickenpox cases reported at Portland Expo, officials say - WMTW Portland"
                                           articleDescription:@"Staff, volunteers in the Expo on July 26 or later asked to check for symptoms."];

        Article *articleTwo = [[Article alloc] initWithAuthor:@"Hollie Silverman and Chuck Johnston, CNN"
                                                        title:@"Police stopped the Dayton shooter in less than 30 seconds - CNN"
                                           articleDescription:@"Surveillance video shows the chaos unfold in Dayton, Ohio, as a shooter targets people out on a Saturday night in the Oregon District."];

        Article *articleThree = [[Article alloc] initWithAuthor:@"Reuters"
                                                          title:@"India scraps special status for Kashmir amid crackdown - CNBC"
                                             articleDescription:@"India's government on Monday revoked the special status of Kashmir in a bid to fully integrate its only Muslim-majority region with the rest of the country."];

        Article *articleFour = [[Article alloc] initWithAuthor:@"Eustance Huang"
                                                         title:@"China's yuan just weakened to an important level. One analyst says it's 'retaliation' for tariffs - CNBC"
                                            articleDescription:@"The Chinese yuan crossed a closely watched 7 barrier against the dollar on Monday following a recent reescalation in the trade war between Beijing and Washington."];

        Article *articleFive = [[Article alloc] initWithAuthor:@""
                                                         title:@"'It's time to bring back order': Carrie Lam denounces 'violent' Hong Kong protests - Guardian News"
                                            articleDescription:@"Hong Kong chief executive Carrie Lam has called for stability after another weekend of chaotic protests that rocked the special administration region. Beijin..."];
        
        [self.articleArray addObject:articleOne];
        [self.articleArray addObject:articleTwo];
        [self.articleArray addObject:articleThree];
        [self.articleArray addObject:articleFour];
        [self.articleArray addObject:articleFive];
    }
    return self;
}
@end
