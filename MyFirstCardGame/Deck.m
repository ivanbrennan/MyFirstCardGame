//
//  Deck.m
//  MyFirstCardGame
//
//  Created by Ivan on 6/26/16.
//  Copyright © 2016 Handy. All rights reserved.
//

#import "Deck.h"
#import "Card.h"

@implementation Deck

- (id)init {
  self = [super init];

  if (self)
    self.cards = [[NSMutableArray alloc] init];

  return self;
}

- (void)addCard:(Card *)aCard {
  aCard.deck = self;
  [self.cards addObject:aCard];
}

- (void)shuffle {
  NSUInteger count = [self.cards count];

  for(NSUInteger i = 0; i < count; i++) {
    NSInteger remainingCount = count - i;
    NSInteger exchangeIndex = i + arc4random_uniform((u_int32_t)remainingCount);

    [self.cards exchangeObjectAtIndex:i withObjectAtIndex:exchangeIndex];
  }
}

- (Card *)getTopCard {
  return self.cards[0];
}

@end
