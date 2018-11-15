//
//  HMHomeStatusesParam.m
//  黑马微博
//
//  Created by apple on 14-7-11.
//  Copyright (c) 2014年 heima. All rights reserved.
//

#import "HMHomeStatusesParam.h"

@implementation HMHomeStatusesParam
///**
// *  @property (nonatomic, strong) NSNumber *since_id;
// 
// /** false	int64	若指定此参数，则返回ID小于或等于max_id的微博，默认为0。*/
//@property (nonatomic, strong) NSNumber *max_id;
//
///** false	int	单页返回的记录条数，最大不超过100，默认为20。*/
//@property (nonatomic, strong) NSNumber *count;

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@,%@,%@",self.since_id,_max_id,_count];
}

@end
