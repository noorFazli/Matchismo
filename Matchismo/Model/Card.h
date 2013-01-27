//
//  Card.h
//  Matchismo
//
//  Created by manu on 27/01/2013.
//  Copyright (c) 2013 Manuel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isFaceUp) BOOL faceUp;
@property (nonatomic, getter=isUnPlayable) BOOL unPlayable;

-(int)match:(NSArray *) otherCards;
@end
