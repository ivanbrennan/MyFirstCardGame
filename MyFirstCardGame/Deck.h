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

@property (strong) NSArray *suites;
@property (strong) NSArray *ranks;
@property (strong) NSMutableArray *cards;

- (instancetype)initWithSuites:(NSArray *)suites ranks:(NSArray *)ranks;
- (void)shuffle;
- (Card*)topCard;

@end
