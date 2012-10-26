//
//  AppDelegate.h
//  IBCalesthetics
//
//  Created by Kyle Pauley on 10/2/12.
//  Copyright (c) 2012 Kyle Pauley. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *sourceField;
@property (weak) IBOutlet NSTextFieldCell *helloWorldLabel;
@property (weak) IBOutlet NSTextField *segmentOutputLabel;
@property (weak) IBOutlet NSTextField *seasonsMonthLabel;
@property (weak) IBOutlet NSTextField *timeLabel;
@property (weak) IBOutlet NSTextField *sliderLabel;
@property (weak) IBOutlet NSTextField *sliderSquaredLabel;
@property (weak) IBOutlet NSTextField *speechSource;
@property (weak) IBOutlet NSSpeechSynthesizer *synth;


- (IBAction)helloWorldButton:(id)sender;
- (IBAction)goodbyeButton:(id)sender;
- (IBAction)copyButton:(id)sender;
- (IBAction)firstSegmented:(id)sender;
- (IBAction)seasonRadioButtons:(id)sender;
- (IBAction)showTheTime:(id)sender;
- (IBAction)slidersMoved:(id)sender;
- (IBAction)startSpeech:(id)sender;
- (IBAction)stopSpeech:(id)sender;
- (IBAction)speechRateSlider:(id)sender;
- (IBAction)speechVoiceSelector:(id)sender;

@end
