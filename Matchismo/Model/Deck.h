//
//  Deck.h
//  Matchismo
//
//  Created by manu on 27/01/2013.
//  Copyright (c) 2013 Manuel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(Card *)drawRandomCard;
@end
