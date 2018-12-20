//
//  DBDiaryInfo.m
//  QGDB
//
//  Created by Hanxiaojie on 2018/6/29.
//  Copyright © 2018年 徐其岗. All rights reserved.
//

#import "DBDiaryInfo.h"

@implementation DBDiaryInfo

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)setValue:(id)value forKey:(NSString *)key{
    if (value) {
        [super setValue:value forKey:key];
    }
}
- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}

@end
