//
//  TagViewCollectionViewCell.m
//  UICollectionViewDemo1
//
//  Created by goldeneye on 2017/2/27.
//  Copyright © 2017年 goldeneye. All rights reserved.
//

#import "TagViewCollectionViewCell.h"
#import "Define.h"
#import "TagModel.h"
#import "BAButton.h"
@interface TagViewCollectionViewCell()

@property(nonatomic,strong)UILabel * nameLabel;
@property(nonatomic,strong)BAButton * btn;


@end

@implementation TagViewCollectionViewCell
/**lazy加载***/
- (UILabel *)nameLabel
{
    if (!_nameLabel) {
        _nameLabel = [[UILabel alloc]init];
        _nameLabel.font = kTitleFont;
        _nameLabel.text = @"体测";
        _nameLabel.textAlignment = NSTextAlignmentCenter;
        _nameLabel.textColor = [UIColor blackColor];
    }
    return _nameLabel;
}
- (BAButton *)btn
{
    if (!_btn) {
        _btn = [[BAButton alloc] init];
        
        [_btn setImage:[UIImage imageNamed:@"loveheart"] forState:UIControlStateNormal];
        [_btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _btn.buttonStatus = BAButtonStatusLeft;
        _btn.buttonCornerRadius = 5.0;
        _btn.titleLabel.font = kTitleFont;
        _btn.userInteractionEnabled = NO;
        
    }
    return _btn;
    
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUp];
    }
    return self;
}

- (void)setUp{
    
    /*
     [self.contentView addSubview:self.nameLabel];
     
     self.nameLabel.sd_layout.leftSpaceToView(self.contentView,0).topSpaceToView(self.contentView,0).rightSpaceToView(self.contentView,0).bottomSpaceToView(self.contentView,0);
     */
    
    [self.contentView addSubview:self.btn];
    
    self.btn.sd_layout.leftSpaceToView(self.contentView,0).topSpaceToView(self.contentView,0).rightSpaceToView(self.contentView,0).bottomSpaceToView(self.contentView,0);
}

- (void)setModel:(TagModel *)model
{
    _model = model;
    
    // self.nameLabel.text = model.tagName;
    
    
    
    [self.btn setTitle:model.tagName forState:UIControlStateNormal];
    
    if (model.modelSelected) {
        [self setBackgroundColor:[UIColor redColor]];
        // [self.nameLabel setTextColor:[UIColor whiteColor]];
        [self.btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        self.btn.buttonStatus = BAButtonStatusRight;
    }else{
        
        [self.btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.btn.buttonStatus = BAButtonStatusLeft;
        [self setBackgroundColor:[UIColor groupTableViewBackgroundColor]];
        // [self.nameLabel setTextColor:[UIColor blackColor]];
    }
    
    
    
    
    
}
@end
