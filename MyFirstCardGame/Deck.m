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

- (id)initWithSuites:(NSArray *)suites ranks:(NSArray *)ranks {
  self = [super init];

  if (self) {
    self.suites = suites;
    self.ranks = ranks;
    [self initializeCards];
  }

  return self;
}

- (void)initializeCards {
  self.cards = [[NSMutableArray alloc] init];

  for (int i = 0; i < [self.suites count]; ++i) {
    NSString *suite = self.suites[i];
    for (int j = 0; j < [self.ranks count]; ++j) {
      NSString *rank = self.ranks[j];

      [self addCardWithSuite:suite rank:rank];
    }
  }
}

- (void)addCardWithSuite:(NSString *)suite rank:(NSString *)rank {
  Card *card = [[Card alloc] initWithSuite:suite rank:rank];

  card.deck = self;
  [self.cards addObject: card];
}

- (void)shuffle {
  NSUInteger count = [self.cards count];
  
  for(NSUInteger i = 0; i < count; i++) {
    NSInteger remainingCount = count - i;
    NSInteger exchangeIndex = i + arc4random_uniform((u_int32_t)remainingCount);
    
    [self.cards exchangeObjectAtIndex:i withObjectAtIndex:exchangeIndex];
  }
}

- (Card *)topCard {
  return self.cards[0];
}

@end
