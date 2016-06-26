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
    NSArray *suites = @[@"♥", @"♦", @"♠", @"♣"];
    
    NSArray *ranks = @[@"2", @"3", @"4", @"5", @"6", @"7", @"8",
                       @"9", @"10", @"J", @"Q", @"K", @"A"];
    
    self.deck = [[Deck alloc] initWithSuites:suites ranks:ranks];
  }
  
  return self;
}

- (IBAction)shuffleCards:(id)sender {
  [self.deck shuffle];
  self.cardLabel.text = [self.deck.topCard label];
}

@end
