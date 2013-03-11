//
//  Card.h
//  RPGOverview
//
//  Created by mike on 3/10/13.
//  Copyright (c) 2013 mike. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (nonatomic,strong)NSString *contents;
@property (nonatomic,getter = isFaceUp) BOOL faceUp;
@property (nonatomic, getter = isUnplayable) BOOL unplayable;

-(int)match:(NSArray *)otherCards;

@end
