//
//  ViewController.m
//  MyFirstCardGame
//
//  Created by Justin Williams on 6/21/16.
//  Copyright © 2016 Handy. All rights reserved.
//

#import "ViewController.h"
#import "Deck.h"
#import "Card.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *cardLabel;

@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
  self = [super initWithCoder:aDecoder];

  if (self) {
    self.deck = [[Deck alloc] init];
    [self addCardsToDeck];
  }

  return self;
}

- (void)addCardsToDeck {
  NSArray *suites = @[@"♥", @"♦", @"♠", @"♣"];
  NSArray *ranks  = @[@"2", @"3", @"4", @"5",
                      @"6", @"7", @"8", @"9",
                      @"10", @"J", @"Q", @"K", @"A"];

  for (int i = 0; i < [suites count]; ++i) {
    NSString *suite = suites[i];

    for (int j = 0; j < [ranks count]; ++j) {
      NSString *rank = ranks[j];

      Card *card = [[Card alloc] initWithSuite:suite rank:rank];
      [self.deck addCard:card];
    }
  }
}

- (IBAction)shuffleCards:(id)sender {
  [self.deck shuffle];
  self.cardLabel.text = [self.deck.getTopCard label];
}

@end
