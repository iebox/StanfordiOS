//
//  PlayingCard.h
//  RPGOverview
//
//  Created by mike on 3/11/13.
//  Copyright (c) 2013 mike. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card;
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
