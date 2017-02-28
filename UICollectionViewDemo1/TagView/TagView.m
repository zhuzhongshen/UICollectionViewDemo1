
//
//  TagView.m
//  UICollectionViewDemo1
//
//  Created by goldeneye on 2017/2/27.
//  Copyright © 2017年 goldeneye. All rights reserved.
//

#import "TagView.h"
#import "Define.h"
#import "TagViewCollectionViewCell.h"
#import "TagGroupModel.h"
#import "TagModel.h"
#import "EqualSpaceFlowLayout.h"
static NSString * cellIdtentifier = @"collectionCell";
@interface TagView()<UICollectionViewDelegate,UICollectionViewDataSource,EqualSpaceFlowLayoutDelegate>

@property(nonatomic,strong)UICollectionView * myCollectionView;

@end

@implementation TagView

- (instancetype)init{
    if (self = [super init]) {
        
    }
    return self;
}
//确定view的大小
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
    }
    return self;
}
- (UICollectionView *)myCollectionView
{
    if (!_myCollectionView) {
        
        EqualSpaceFlowLayout *flowLayout = [[EqualSpaceFlowLayout alloc] init];
        flowLayout.delegate = self;
        
        //修改
        //   flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        // flowLayout.minimumLineSpacing = HorizontalMargin;
        
        // flowLayout.sectionInset = UIEdgeInsetsMake(HorizontalMargin, HorizontalMargin, HorizontalMargin, HorizontalMargin);
        
        UICollectionView *myCollectionView;
        myCollectionView = [[UICollectionView alloc] initWithFrame:self.frame collectionViewLayout:flowLayout];
        myCollectionView.delegate = self;
        myCollectionView.dataSource = self;
        myCollectionView.showsHorizontalScrollIndicator = NO;
        myCollectionView.backgroundColor = [UIColor whiteColor];
        [myCollectionView registerClass:[TagViewCollectionViewCell class] forCellWithReuseIdentifier:cellIdtentifier];
        _myCollectionView = myCollectionView;
    }
    return _myCollectionView;
}

- (void)initCommodityModelArray:(NSArray *)commArray{
    for (TagGroupModel *commModel in commArray) {
        [self initTagWidth:commModel];
    }
}

- (void)initTagWidth:(TagGroupModel *)commModel{
    //
    
        CGSize imageSize  =  [UIImage imageNamed:@"loveheart"].size;
    
    CGSize maxSize = CGSizeMake((self.frame.size.width - HorizontalMargin*2 - margin*2), MAXFLOAT);

    
    
    NSLog(@"maxSize.width ==== %lf,imageSize.width = %lf ",maxSize.width,imageSize.width);
    
    for (TagModel *tagmodel in commModel.tagModelArray) {
        CGSize realSize = [[NSString alloc]sizeWithText:tagmodel.tagName font:kTitleFont maxSize:maxSize];
        tagmodel.tagWidth = realSize.width+imageSize.width+7;
    }
    
}

//初始化collectionView
-(void)initCollectionViewWithModel:(NSArray *)commModelArray{
    
    self.commodityModelArray = commModelArray;
    //先把宽度算好
    [self initCommodityModelArray:commModelArray];
    [self addSubview:self.myCollectionView];
    [self.myCollectionView reloadData];
}

//cell的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    TagGroupModel *commModel = self.commodityModelArray[indexPath.section];
    
    TagModel *tagmodel = commModel.tagModelArray[indexPath.row];
    
    return CGSizeMake(tagmodel.tagWidth + margin*2,kCellHeight);
}

//组
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return self.commodityModelArray.count;
}

//列
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    TagGroupModel *commModel = self.commodityModelArray[section];
    return commModel.tagModelArray.count;
}
//cell样式
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    TagViewCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdtentifier forIndexPath:indexPath];
    TagGroupModel *commModel = self.commodityModelArray[indexPath.section];
    
    TagModel *tagModel = commModel.tagModelArray[indexPath.row];
    
    cell.model = tagModel;
    
    CGColorRef cgcolor = [UIColor groupTableViewBackgroundColor].CGColor;
    
    [cell.layer setBorderWidth:1.0f];
    
    [cell.layer setBorderColor:cgcolor];
    
    return cell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    TagGroupModel *commModel = self.commodityModelArray[indexPath.section];
    TagModel *tagModel = commModel.tagModelArray[indexPath.row];
    tagModel.modelSelected = !tagModel.modelSelected;
    [self.myCollectionView reloadData];
}



/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
