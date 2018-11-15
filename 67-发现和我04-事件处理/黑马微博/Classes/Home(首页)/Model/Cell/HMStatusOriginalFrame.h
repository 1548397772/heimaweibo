//
//  HMStatusOriginalFrame.h
//  黑马微博
//
//  Created by apple on 14-7-14.
//  Copyright (c) 2014年 heima. All rights reserved.
//

#warning 因为时间lable的显示内容是根据当下的时间实时变化的,所以时间的数据就是时刻变化的,这里的数据只会运行一次(如果用户不做操作的话),所以时间的设置不能写在这里面.又因为时间整体的布局不受时间label布局的影响,所以把时间label的设置剥离出去.   但是"来源"这个label是在x方向依赖于时间label的,所以来源label也得跟随时间label剥离出去.  这就出现了这个自定义的Frame里面的frame不完整,所以部分还得再cell得视图中具体的设置.

#import <Foundation/Foundation.h>
@class HMStatus;

@interface HMStatusOriginalFrame : NSObject
/** 昵称 */
@property (nonatomic, assign) CGRect nameFrame;
/** 正文 */
@property (nonatomic, assign) CGRect textFrame;
/** 头像 */
@property (nonatomic, assign) CGRect iconFrame;
/** 会员图标 */
@property (nonatomic, assign) CGRect vipFrame;
/** 配图相册  */
@property (nonatomic, assign) CGRect photosFrame;

/** 自己的frame */
@property (nonatomic, assign) CGRect frame;

/** 微博数据 */
@property (nonatomic, strong) HMStatus *status;
@end
