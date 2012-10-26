//
//  AppDelegate.m
//  IBCalesthetics
//
//  Created by Kyle Pauley on 10/2/12.
//  Copyright (c) 2012 Kyle Pauley. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}



// Hello button

- (IBAction)helloWorldButton:(id)sender {
    NSLog(@"Button Pressed");
    [[self helloWorldLabel] setStringValue:@"Hello World"];
}



// Goodbye button
- (IBAction)goodbyeButton:(id)sender {
    [[self helloWorldLabel] setStringValue:@"Goodbye"];
}



// the Copy button
- (IBAction)copyButton:(id)sender {
    [[self helloWorldLabel] setStringValue:[[self sourceField] stringValue]];
}



// Segmented Control
- (IBAction)firstSegmented:(id)sender {
    
    NSInteger clickedSegment = [sender selectedSegment];
    
    NSLog(@"Selected number %li", clickedSegment);
    
   // [[self segmentOutputLabel] setStringValue:@"test"];
    if ((clickedSegment) == 0) {
        [[self segmentOutputLabel] setStringValue:@"0: Zero"];
    }
    if ((clickedSegment) == 1) {
        [[self segmentOutputLabel] setStringValue:@"1: One"];
    }
    if ((clickedSegment) == 2) {
        [[self segmentOutputLabel] setStringValue:@"2: Two"];
    }
}


// Seasons Radio buttons

- (IBAction)seasonRadioButtons:(id)sender {
    
    NSButtonCell *selCell = [sender selectedCell];
    NSLog(@"Selected cell is %li", [selCell tag]);
    
    if ([selCell tag] == 0) {
        [[self seasonsMonthLabel] setStringValue:@"December"];
    }
    
    if ([selCell tag] == 1) {
        [[self seasonsMonthLabel] setStringValue:@"March"];
    }
    if ([selCell tag] == 2) {
        [[self seasonsMonthLabel] setStringValue:@"June"];
    }
    if ([selCell tag] ==  3) {
        [[self seasonsMonthLabel] setStringValue:@"September"];
    }
    
    
    
//  Now Button
}

- (IBAction)showTheTime:(id)sender {
    [[self timeLabel] setObjectValue:[NSDate date]];
}




// Slider
- (IBAction)slidersMoved:(id)sender {
    int sliderValue = [sender intValue];
    float x=[sender floatValue];
    NSString *stringValue = [NSString stringWithFormat:@"%i", sliderValue];
    [[self sliderLabel] setStringValue:stringValue];
    float sliderSquaredValue = (x * x);
    
    [[self sliderSquaredLabel] setFloatValue:sliderSquaredValue];
}





//  Speech Section

- (IBAction)startSpeech:(id)sender {

     [[self synth] startSpeakingString:[[self speechSource] stringValue]];
}

- (IBAction)stopSpeech:(id)sender {
    [[self synth] stopSpeaking];
}

- (IBAction)speechRateSlider:(id)sender {
    float rateSliderValue = [sender floatValue];
    NSLog(@"Rate Slider is %f", rateSliderValue);
    [[self synth]setRate:rateSliderValue];
    NSLog(@"Rate Slider is %f", rateSliderValue);
}

- (IBAction)speechVoiceSelector:(id)sender {
    
    NSInteger clickedVoice = [sender selectedSegment];
    
    NSLog(@"Selected voice tab is %li", clickedVoice);
    
    if ((clickedVoice) == 0) {
        [[self synth] setVoice:@"com.apple.speech.synthesis.voice.Alex"];

    }
    if ((clickedVoice) == 1) {
        [[self synth] setVoice:@"com.apple.speech.synthesis.voice.Victoria"];
    }
    if ((clickedVoice) == 2) {
        [[self synth] setVoice:@"com.apple.speech.synthesis.voice.Cellos"];
    }
    
    if ((clickedVoice) == 3) {
        [[self synth] setVoice:@"com.apple.speech.synthesis.voice.Trinoids"];
    }
    
}

@end
