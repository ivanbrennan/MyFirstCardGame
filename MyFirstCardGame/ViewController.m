//
//  ViewController.m
//  MyFirstCardGame
//
//  Created by Justin Williams on 6/21/16.
//  Copyright © 2016 Handy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *cardLabel;

@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
  self = [super initWithCoder:aDecoder];
  if (self) {
    // Initialize your game or deck here.
    
    // Deck *deck = [[Deck alloc] init];
  }
  return self;
}

- (IBAction)shuffleCards:(id)sender {
  // [deck shuffle];
  
  // Replace my label text here please.
  self.cardLabel.text = @"A♣";
}


@end
