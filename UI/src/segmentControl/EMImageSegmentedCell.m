//
//  EMNormalSegmentedCell.m
//  EMStock
//
//  Created by xoHome on 14-10-20.
//  Copyright (c) 2014年 flora. All rights reserved.
//

#import "EMImageSegmentedCell.h"
#import "NSString+drawing.h"
#import "EMContext.h"
#import "MSCore.h"

@implementation EMImageSegmentedCellObject

+ (instancetype)objectWithTitle:(NSString *)title image:(UIImage *)image
{
    EMImageSegmentedCellObject *object = [[EMImageSegmentedCellObject alloc] init];
    object.title = title;
    object.image = image;
    return object;
}

- (Class)cellClass
{
    return [EMImageSegmentedCell class];
}

@end

@implementation EMImageSegmentedCell
@synthesize selected = _selected;

- (instancetype)initWithSegmentObject:(EMImageSegmentedCellObject *)object
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        _object = object;
        
        self.font = [UIFont systemFontOfSize:15];
        self.selectedColor = RGB(0x46, 0x90, 0xef);
        self.normalColor = RGB(0x58, 0x58, 0x58);

    }
    return self;
}


- (void)setSelected:(BOOL)selected
{
    _selected = selected;
    [self setNeedsDisplay];
}


- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    UIFont *font = self.font;
    UIColor *textColor = _selected ? self.selectedColor : self.normalColor;

    if (_object.image)
    {
        CGSize imageSize = _object.image.size;
        CGSize titleSize= [_object.title sizeWithAttributes:@{NSFontAttributeName:font}];
        CGFloat totalWidth = imageSize.width + titleSize.width + 5;
        
        CGFloat beginX = .5 * (rect.size.width - totalWidth);
        [_object.image drawAtPoint:CGPointMake(beginX, .5 * (rect.size.height - imageSize.height))];
        beginX += (imageSize.width + 5);
        [_object.title em_drawAtPoint:CGPointMake(beginX, CGRectGetMidY(rect)) withFont:font color:textColor aligment:EMTextVerticalAlignmentCenter];
    }
    else
    {
        [_object.title em_drawAtPoint:CGPointMake(CGRectGetMidX(rect), CGRectGetMidY(rect)) withFont:font color:textColor aligment:NSTextAlignmentCenter|EMTextVerticalAlignmentCenter];
    }
    
}

@end
