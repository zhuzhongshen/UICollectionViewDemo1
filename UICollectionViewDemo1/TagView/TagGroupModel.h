//
//  TagGroupModel.h
//  UICollectionViewDemo1
//
//  Created by goldeneye on 2017/2/27.
//  Copyright © 2017年 goldeneye. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TagModel;
@interface TagGroupModel : NSObject

@property(nonatomic,assign) NSInteger commodityID;

@property(nonatomic,copy)NSString *commodityName;

@property(nonatomic,strong)NSArray *tagModelArray;

-(id)initWithDict:(NSDictionary *)dictionary;

+(id)modelWithDict:(NSDictionary *)dictionary;




@end
