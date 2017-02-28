//
//  ViewController.m
//  UICollectionViewDemo1
//
//  Created by goldeneye on 2017/2/27.
//  Copyright © 2017年 goldeneye. All rights reserved.
//

#import "ViewController.h"
#import "TagGroupModel.h"
#import "TagModel.h"
#import "TagView.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *commModelArray;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    TagView *commView = [[TagView alloc]initWithFrame:CGRectMake(0, 50, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    //先在控制器中产生数据
    [self initCommModelArray];
    
    //初始化view
    [commView initCollectionViewWithModel:self.commModelArray];
    
    //加入view中
    [self.view addSubview:commView];
    
}

/*
 *  批量产生数据
 */
- (void )initCommModelArray{
    if (_commModelArray == nil) {
        
        //第一个model
        TagModel *tag1 = [[TagModel alloc]init];
        tag1.tagID = 1;
        tag1.tagName = @"土豪豪豪金";
        tag1.modelSelected = NO;
        
        TagModel *tag2 = [[TagModel alloc]init];
        tag2.tagID = 2;
        tag2.tagName = @"深空灰深空灰深";
        tag2.modelSelected = NO;
        
        TagModel *tag3 = [[TagModel alloc]init];
        tag3.tagID = 3;
        tag3.tagName = @"银白色银白色银白色色银白色银白色银白色";
        tag3.modelSelected = NO;
        
        TagModel *tag4 = [[TagModel alloc]init];
        tag4.tagID = 4;
        tag4.tagName = @"玫瑰金玫";
        tag4.modelSelected = NO;
        
        
        TagModel *tag5 = [[TagModel alloc]init];
        tag5.tagID = 5;
        tag5.tagName = @"亚光光光黑";
        tag5.modelSelected = NO;
       
        TagModel *tag6 = [[TagModel alloc]init];
        tag6.tagID = 6;
        tag6.tagName = @"亮是不是光不是黑";
        tag6.modelSelected = NO;
        
    
        TagModel *tag7 = [[TagModel alloc]init];
        tag7.tagID = 7;
        tag7.tagName = @"亮光黑";
        tag7.modelSelected = NO;
        
        
        TagGroupModel *commModel1 = [[TagGroupModel alloc]init];
        commModel1.commodityID = 1;
        commModel1.commodityName = @"机身颜色";
        NSArray *arr1 = [[NSArray alloc]initWithObjects:tag1, tag2, tag3, tag4, tag5,tag6,tag7,nil];
        
        commModel1.tagModelArray = arr1;
        
        
        _commModelArray = [[NSMutableArray alloc]init];
        
        [_commModelArray addObject:commModel1];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
