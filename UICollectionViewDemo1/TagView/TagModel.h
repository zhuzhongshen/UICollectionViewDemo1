//
//  TagModel.h
//  UICollectionViewDemo1
//
//  Created by goldeneye on 2017/2/27.
//  Copyright © 2017年 goldeneye. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TagModel : NSObject

@property (nonatomic, assign) NSInteger tagID;

@property (nonatomic, copy) NSString *tagName;

@property (nonatomic, assign) BOOL modelSelected;

@property (nonatomic, assign) float tagWidth;

-(id)initWithDict:(NSDictionary *)dictionary;

+(id)modelWithDict:(NSDictionary *)dictionary;

@end

