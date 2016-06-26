//
//  Card.h
//  MyFirstCardGame
//
//  Created by Ivan on 6/26/16.
//  Copyright © 2016 Handy. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Deck;

@interface Card : NSObject

@property (weak) Deck *deck;
@property (strong) NSString *suite;
@property (strong) NSString *rank;

- (instancetype)initWithSuite:(NSString *)suite rank:(NSString *)rank;
- (NSString *)label;

@end
