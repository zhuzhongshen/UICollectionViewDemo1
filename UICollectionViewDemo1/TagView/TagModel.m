//
//  TagModel.m
//  UICollectionViewDemo1
//
//  Created by goldeneye on 2017/2/27.
//  Copyright © 2017年 goldeneye. All rights reserved.
//

#import "TagModel.h"

@implementation TagModel

-(id)initWithDict:(NSDictionary *)dictionary{
    if (self = [super init]) {
        
        //批量转
        [self setValuesForKeysWithDictionary:dictionary];
        
    }
    return self;
}

+(id)modelWithDict:(NSDictionary *)dictionary{
    return [[self alloc]initWithDict:dictionary];
}

@end
