//
//  PlayingCard.m
//  Matchismo
//
//  Created by manu on 27/01/2013.
//  Copyright (c) 2013 Manuel. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;

+(NSArray *) validSuits {
    return @[@"♥", @"♦",@"♠",@"♣"];
}

+(NSArray *)rankStrings {
    return @[@"?",@"A", @"2",@"3",@"4",@"5",@"6",@"7",@"J",@"Q",@"K"];
}

+(NSUInteger)maxRank {
    return [self rankStrings].count -1;
}

-(void)setRank:(NSUInteger)rank {
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
        // No need to use @synthesize here, since we're never setting the getter for rank
    }
}

-(NSString *)contents {
    NSArray *rankStrings = @[@"?",@"A", @"2",@"3",@"4",@"5",@"6",@"7",@"J",@"Q",@"K"];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

-(void)setSuit:(NSString *)suit {
    if ([@[@"♥", @"♦",@"♠",@"♣"] containsObject:suit]) {
        _suit = suit;
    }
}

-(NSString *)suit {
    return  _suit ? _suit: @"?";
}

@end