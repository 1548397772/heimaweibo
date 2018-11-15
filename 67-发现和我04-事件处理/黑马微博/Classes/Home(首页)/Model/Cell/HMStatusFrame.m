//
//  HMStatusFrame.m
//  黑马微博
//
//  Created by apple on 14-7-14.
//  Copyright (c) 2014年 heima. All rights reserved.
//

#import "HMStatusFrame.h"
#import "HMStatus.h"
#import "HMStatusDetailFrame.h"

@implementation HMStatusFrame

- (void)setStatus:(HMStatus *)status
{
    _status = status;
    
    // 1.计算微博具体内容（微博整体）
    HMStatusDetailFrame *detailFrame = [[HMStatusDetailFrame alloc] init];
    detailFrame.status = self.status; //yyy我认为不用self.比较好
    self.detailFrame = detailFrame;
    
    // 2.计算底部工具条
    CGFloat toolbarX = 0;
    CGFloat toolbarY = CGRectGetMaxY(self.detailFrame.frame);
    CGFloat toolbarW = HMScreenW;
    CGFloat toolbarH = 35;
    self.toolbarFrame = CGRectMake(toolbarX, toolbarY, toolbarW, toolbarH);
    
    // 3.计算cell的高度
    self.cellHeight = CGRectGetMaxY(self.toolbarFrame);
}

@end
