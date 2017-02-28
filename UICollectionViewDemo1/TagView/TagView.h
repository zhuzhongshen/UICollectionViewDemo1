//
//  TagView.h
//  UICollectionViewDemo1
//
//  Created by goldeneye on 2017/2/27.
//  Copyright © 2017年 goldeneye. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TagGroupModel;

@interface TagView : UIView

@property (nonatomic, strong) NSArray *commodityModelArray;

//初始化collectionView
-(void)initCollectionViewWithModel:(NSArray *)commModelArray;

@end
