/*!
 *  @header BAKit.h
 *          BABaseProject
 *
 *  @brief  BAKit
 *
 *  @author 博爱
 *  @copyright    Copyright © 2016年 博爱. All rights reserved.
 *  @version    V1.0
 */

//                            _ooOoo_
//                           o8888888o
//                           88" . "88
//                           (| -_- |)
//                            O\ = /O
//                        ____/`---'\____
//                      .   ' \\| |// `.
//                       / \\||| : |||// \
//                     / _||||| -:- |||||- \
//                       | | \\\ - /// | |
//                     | \_| ''\---/'' | |
//                      \ .-\__ `-` ___/-. /
//                   ___`. .' /--.-\ `. . __
//                ."" '< `.___\_<|>_/___.' >'"".
//               | | : `- \`.;`\ _ /`;.`/ - ` : | |
//                 \ \ `-. \_ __\ /__ _/ .-` / /
//         ======`-.____`-.___\_____/___.-`____.-'======
//                            `=---='



#import <UIKit/UIKit.h>

@interface BAButton : UIButton
/*! 过期属性或方法名提醒 */
#define BANetManagerDeprecated(instead) __deprecated_msg(instead)

typedef NS_ENUM(NSUInteger, BAButtonStatus) {
    BAButtonStatusNormal, // 默认
    BAButtonStatusLeft, // 左对齐
    BAButtonStatusCenter, // 居中对齐
    BAButtonStatusRight, // 右对齐
    BAButtonStatusTop, // 图标在上，文本在下(居中)
    BAButtonStatusBottom, // 图标在下，文本在上(居中)
};

/*! 设置样式 */
@property (nonatomic, assign) BAButtonStatus buttonStatus;
/*! 设置圆角 */
@property (nonatomic, assign) CGFloat buttonCornerRadius;

@end

