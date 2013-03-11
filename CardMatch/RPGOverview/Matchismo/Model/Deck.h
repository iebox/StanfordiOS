//
//  Deck.h
//  RPGOverview
//
//  Created by mike on 3/10/13.
//  Copyright (c) 2013 mike. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"


@interface Deck : NSObject
- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (Card *)drawRandomCard;
@end
