//
//  ViewController.h
//  ProgressIndicator
//
//  Created by Scott Combs on 3/17/20.
//  Copyright © 2020 CipherLoc Corporation. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController {
    double count;
}

@property (weak) IBOutlet NSProgressIndicator *progress;
@property (weak) IBOutlet NSTextField *textField;
@property (readwrite, retain) IBOutlet NSMutableArray* array;
@property (readwrite, retain) IBOutlet NSTimer* timer;

- (IBAction)onButtonClicked:(NSButton *)sender;
- (NSUInteger)getRandomNumberBetween:(NSUInteger)from to:(NSUInteger)to;
- (void)doTimer:(NSString*)peep value:(double)value;
@end

