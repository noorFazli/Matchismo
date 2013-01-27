//
//  PlayingCard.h
//  Matchismo
//
//  Created by manu on 27/01/2013.
//  Copyright (c) 2013 Manuel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+(NSUInteger)maxRank;
+(NSArray *) validSuits;

@end
