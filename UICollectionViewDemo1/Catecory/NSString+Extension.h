//
//  NSString+Extension.h
//  UICollectionViewDemo1
//
//  Created by goldeneye on 2017/2/27.
//  Copyright © 2017年 goldeneye. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Extension)
/**
 *  返回字符串所占用的尺寸
 *
 *  @param font    字体
 *  @param maxSize 最大尺寸
 */
- (CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize;

- (CGSize)sizeWithText:(NSString *)text font:(UIFont *)font maxSize:(CGSize)maxSize;

- (CGSize)sizeWithAttributeText:(NSString *)text font:(UIFont *)font maxSize:(CGSize)maxSize andLineSpacing:(int)lineSpacing;

@end
