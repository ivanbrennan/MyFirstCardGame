//
//  Deck.h
//  MyFirstCardGame
//
//  Created by Ivan on 6/26/16.
//  Copyright © 2016 Handy. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Card;

@interface Deck : NSObject

@property (strong) NSMutableArray *cards;

- (void)addCard:(Card *)aCard;
- (void)shuffle;
- (Card*)getTopCard;

@end
