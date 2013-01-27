//
//  CardGameViewController.m
//  Matchismo
//
//  Created by manu on 26/01/2013.
//  Copyright (c) 2013 Manuel. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic, strong) PlayingCardDeck *deck;

@end

@implementation CardGameViewController

-(PlayingCardDeck *)deck {
    if (!_deck) _deck = [[PlayingCardDeck alloc]init];
    return _deck;
}

-(void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)flipCard:(UIButton *)sender {
    if (sender.isSelected) {
        sender.selected = NO;
    } else {
        sender.selected = YES;
        Card *card = [self.deck drawRandomCard];
        if (card) {
            [sender setTitle:card.contents forState:UIControlStateSelected];
            self.flipCount++;
        } else {
            [sender setTitle:@"X" forState:UIControlStateSelected];
            self.flipsLabel.text = @"The deck is empty";
        }
    }
}

@end
