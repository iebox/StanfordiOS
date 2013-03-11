//
//  PlayingDeckCard.m
//  RPGOverview
//
//  Created by mike on 3/11/13.
//  Copyright (c) 2013 mike. All rights reserved.
//

#import "PlayingDeckCard.h"
#import "PlayingCard.h"
@implementation PlayingDeckCard

-(id) init{
    self = [super init];
    if (self) {
        for (NSString *pSuit in [PlayingCard validSuits]) {
            for (int pRank=1; pRank <= [PlayingCard maxRank]; pRank++) {
                PlayingCard *pCard = [[PlayingCard alloc] init];
                pCard.suit = pSuit;
                pCard.rank = pRank;
                [self addCard:pCard atTop:YES];
            }
        }
        
    }

    return self;
}
@end
