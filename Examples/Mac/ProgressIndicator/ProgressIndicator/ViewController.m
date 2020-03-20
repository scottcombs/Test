//
//  ViewController.m
//  ProgressIndicator
//
//  Created by Scott Combs on 3/17/20.
//  Copyright © 2020 CipherLoc Corporation. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize progress;
@synthesize textField;
@synthesize array;
@synthesize timer;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.wantsLayer = YES;
    
    self.array = [[NSMutableArray alloc] init];
    [self.array addObject:@"Tom"];
    [self.array addObject:@"Dick"];
    [self.array addObject:@"Harry"];
    [self.array addObject:@"Carol"];
    [self.array addObject:@"Alice"];
    [self.array addObject:@"Bob"];
    [self.array addObject:@"Ted"];
    [self.array addObject:@"David"];
    [self.array addObject:@"Scott"];
    [self.array addObject:@"Adam"];
    [self.array addObject:@"Trish"];
    [self.array addObject:@"Parul"];
    
    // Do any additional setup after loading the view.
}

- (void)awakeFromNib {
    // Immediate Initialization
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void)doTimer:(NSString *)peep value:(double)value {
//    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.0001 repeats:NO block:^(NSTimer * _Nonnull timer) {
//
//            [self.view updateLayer];
//    }];
    
}


- (IBAction)onButtonClicked:(NSButton *)sender {
    self.progress.doubleValue = 0.0;
    
    for (double i = 0; i < self.progress.maxValue; i++) {
        NSUInteger value = [self getRandomNumberBetween:0 to:self.array.count - 1];
        NSString* peep = [self.array objectAtIndex:value];
        
        self.textField.stringValue = peep;
        self.progress.doubleValue = i;
        
        [NSRunLoop.mainRunLoop runUntilDate:[[NSDate alloc] initWithTimeIntervalSinceNow:0.01]];
        
    }
}


- (NSUInteger) getRandomNumberBetween:(NSUInteger)from to:(NSUInteger)to {
    NSUInteger value = from + arc4random() % (to - from + 1);
    return (value);
}

@end
