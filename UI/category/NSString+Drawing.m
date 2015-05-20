//
//  NSString+EMStringDrawing.m
//  EMStock
//
//  Created by flora on 14-9-11.
//  Copyright (c) 2014年 flora. All rights reserved.
//

#import "NSString+Drawing.h"
#import "EMCoreMetrics.h"

extern CGRect Point2Rect(CGPoint point, int nAnchor, UIFont *font);

@implementation NSString (Drawing)


- (void)em_drawAtPoint:(CGPoint)point
              withFont:(UIFont *)font
                 color:(UIColor *)color
              aligment:(int)aligment
{
    [self em_drawAtPoint:point withFont:font color:color aligment:aligment lineHeight:0];
}

- (void)em_drawAtPoint:(CGPoint)point
              withFont:(UIFont *)font
                 color:(UIColor *)color
              aligment:(int)aligment
            lineHeight:(CGFloat)lineHeight
{
    CGRect rect =  Point2Rect(point, aligment, font);
    aligment = aligment&3;//排除自定义的排序类型
    [self em_drawInRect:rect withFont:font color:color aligment:aligment lineHeight:lineHeight];
}

- (void)em_drawInRect:(CGRect)rect
             withFont:(UIFont *)font
                color:(UIColor *)color
             aligment:(int)aligment
{
    [self em_drawInRect:rect withFont:font color:color aligment:aligment lineHeight:0];
}


- (void)em_drawInRect:(CGRect)rect
             withFont:(UIFont *)font
                color:(UIColor *)color
             aligment:(int)aligment
           lineHeight:(CGFloat)lineHeight
{
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.alignment = aligment;
    if (lineHeight > 0)
    {
        paragraph.lineSpacing = lineHeight;
    }
    
    NSDictionary *attribute = [NSDictionary dictionaryWithObjectsAndKeys:
                               color,NSForegroundColorAttributeName,
                               font,NSFontAttributeName,
                               paragraph,NSParagraphStyleAttributeName,nil];
    [self drawInRect:rect withAttributes:attribute];
}

- (void)em_drawInRect:(CGRect)rect
       withAttributes:(NSDictionary *)attribute
{
    [self drawInRect:rect withAttributes:attribute];
}

/**
 *默认行高、默认靠左绘制
 */
- (void)em_drawInRect:(CGRect)rect
             withFont:(UIFont *)font
                color:(UIColor *)color
{
    NSDictionary *attribute = [NSDictionary dictionaryWithObjectsAndKeys:
                               color,NSForegroundColorAttributeName,
                               font,NSFontAttributeName,nil];
    [self drawInRect:rect withAttributes:attribute];
}


- (CGSize)em_sizeWithFont:(UIFont *)font
{
    NSDictionary *attributes = @{NSFontAttributeName: font};
    return [self sizeWithAttributes:attributes];
}


@end


