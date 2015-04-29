//
//  EMThemeCheckBoxControl.m
//  UI
//
//  Created by Samuel on 15/4/13.
//  Copyright (c) 2015年 Samuel. All rights reserved.
//

#import "EMThemeCheckBoxControl.h"
#import "EMThemeManager.h"

@implementation EMThemeCheckBoxControl


- (void)applyTheme{
    if ([EMThemeManager themeType] == EMAPPThemeTypeLight) {
        self.titleLabel.textColor = [UIColor blackColor];
        for (EMRadio *radio in _radios) {
            [radio setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        }
    }
    else if ([EMThemeManager themeType] == EMAPPThemeTypeBlack) {
        self.titleLabel.textColor = [UIColor whiteColor];
        for (EMRadio *radio in _radios) {
            [radio setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        }
    }
}

- (void)registerThemeChangeNotificaiton {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(themeDidChangeNotification:) name:RNThemeManagerDidChangeThemes object:nil];
}

- (instancetype)initWithTitle:(NSString *)title
     checkBoxTitles:(NSArray *)titleArray
{
    self = [super initWithTitle:title radioTitles:titleArray];
    if (self) {
        [self registerThemeChangeNotificaiton];
        [self applyTheme];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self registerThemeChangeNotificaiton];
        [self applyTheme];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self applyTheme];
}

- (void)themeDidChangeNotification:(NSNotification *)notification {
    [self applyTheme];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
