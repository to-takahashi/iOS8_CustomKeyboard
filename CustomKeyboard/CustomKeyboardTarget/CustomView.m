//
//  CustomView.m
//  CustomKeyboard
//
//  Created by 高橋 智弘 on 2014/08/09.
//  Copyright (c) 2014年 INZENYR LLC. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

@synthesize _LblInputLine;

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (IBAction)didTapKey:(id)sender {
    UIButton *tappedKey = (UIButton *)sender;
    NSInteger tag = tappedKey.tag;

    NSString *inputString = nil;
    switch (tag) {
        case 1:
            inputString = @"1";
            break;
        case 2:
            inputString = @"2";
            break;
        case 3:
            inputString = @"3";
            break;
        case 4:
            inputString = @"4";
            break;
        case 5:
            inputString = @"5";
            break;
        case 6:
            inputString = @"6";
            break;
        case 7:
            inputString = @"7";
            break;
        case 8:
            inputString = @"8";
            break;
        case 9:
            inputString = @"9";
            break;
        case 10:
            inputString = @"10";
            break;
        default:
            break;
    }

    if (inputString) {
        NSMutableString *lblString = [NSMutableString stringWithString:_LblInputLine.text];
        [lblString appendString:inputString];
        _LblInputLine.text = lblString;
    }
}

@end
