//
//  Card.m
//  MyFirstCardGame
//
//  Created by Ivan on 6/26/16.
//  Copyright © 2016 Handy. All rights reserved.
//

#import "Card.h"

@implementation Card

- (instancetype)initWithSuite:(NSString *)suite rank:(NSString *)rank {
  self = [super init];

  if (self) {
    self.suite = suite;
    self.rank = rank;
  }

  return self;
}

- (NSString *)label {
  return [self.rank stringByAppendingString: self.suite];
}

@end
