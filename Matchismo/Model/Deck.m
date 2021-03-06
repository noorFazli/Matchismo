//
//  Deck.m
//  Matchismo
//
//  Created by manu on 27/01/2013.
//  Copyright (c) 2013 Manuel. All rights reserved.
//

#import "Deck.h"

@interface Deck()

@property (nonatomic, strong) NSMutableArray *cards;

@end

@implementation Deck

-(NSMutableArray *)cards {
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

-(void)addCard:(Card *)card atTop:(BOOL)atTop {
    if (atTop) {
        [self.cards insertObject:card atIndex:[self.cards count]];
        // same as [self.cards insertObject:card atIndex:0]; ??
    } else {
        [self.cards addObject:card];
    }
}

-(Card *)drawRandomCard {
    Card *randomCard = nil;
    
    if (self.cards.count) {
        unsigned int index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObject:randomCard];
    }
    return randomCard;
}

@end
