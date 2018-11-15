//
//  HMStatusCell.m
//  黑马微博
//
//  Created by apple on 14-7-14.
//  Copyright (c) 2014年 heima. All rights reserved.
//

#import "HMStatusCell.h"
#import "HMStatusDetailView.h"
#import "HMStatusToolbar.h"
#import "HMStatusFrame.h"

@interface HMStatusCell()
@property (nonatomic, weak) HMStatusDetailView *detailView;
@property (nonatomic, weak) HMStatusToolbar *toolbar;
@end

@implementation HMStatusCell

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"status";
    HMStatusCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[HMStatusCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    return cell;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) { // 初始化子控件
        // 1.添加微博具体内容
        HMStatusDetailView *detailView = [[HMStatusDetailView alloc] init];
        [self.contentView addSubview:detailView];
        self.detailView = detailView;
        
        // 2.添加工具条
        HMStatusToolbar *toolbar = [[HMStatusToolbar alloc] init];
        [self.contentView addSubview:toolbar];
        self.toolbar = toolbar;
        
        // 3.cell的设置
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)setStatusFrame:(HMStatusFrame *)statusFrame
{
    _statusFrame = statusFrame;   //yyy 这句话注释掉也没事  为啥要写呢  自认为的原因:感觉这个属性是对外用的,而且在这个.m文件中的别的地方也没用到这个属性,所以它没作用.
    
    // 1.微博具体内容的frame数据
    self.detailView.detailFrame = statusFrame.detailFrame;
    
    // 2.底部工具条的frame数据
    self.toolbar.frame = statusFrame.toolbarFrame;
    self.toolbar.status = statusFrame.status;
}
@end