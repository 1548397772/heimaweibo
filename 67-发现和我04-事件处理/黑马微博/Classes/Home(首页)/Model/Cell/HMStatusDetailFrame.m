//
//  HMStatusDetailFrame.m
//  黑马微博
//
//  Created by apple on 14-7-14.
//  Copyright (c) 2014年 heima. All rights reserved.
//

#import "HMStatusDetailFrame.h"
#import "HMStatus.h"
#import "HMStatusOriginalFrame.h"
#import "HMStatusRetweetedFrame.h"

@implementation HMStatusDetailFrame

- (void)setStatus:(HMStatus *)status
{
    _status = status;
    
    // 1.计算原创微博的frame
    HMStatusOriginalFrame *originalFrame = [[HMStatusOriginalFrame alloc] init];
    originalFrame.status = status;
    self.originalFrame = originalFrame;
    
    // 2.计算转发微博的frame
    CGFloat h = CGRectGetMaxY(originalFrame.frame);
    //如果有转发  则y再加
    if (status.retweeted_status) {
        HMStatusRetweetedFrame *retweetedFrame = [[HMStatusRetweetedFrame alloc] init];
        retweetedFrame.retweetedStatus = status.retweeted_status;
        
        // 计算转发微博frame的y值
        CGRect f = retweetedFrame.frame;  //这里的y值应该是0
        f.origin.y = CGRectGetMaxY(originalFrame.frame); //原创和转发  无缝拼接
        retweetedFrame.frame = f;
        
        self.retweetedFrame = retweetedFrame;//这是用于传递转发微博数据的
        
        h = CGRectGetMaxY(retweetedFrame.frame);
    }
    
    // 自己的frame
    CGFloat x = 0;
    CGFloat y = HMStatusCellMargin;
    CGFloat w = HMScreenW;
    self.frame = CGRectMake(x, y, w, h);
}

@end
