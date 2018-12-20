//
//  ViewController.m
//  QGDB
//
//  Created by Hanxiaojie on 2018/6/29.
//  Copyright © 2018年 徐其岗. All rights reserved.
//

#import "ViewController.h"
#import "QGDBManager.h"
#import "DBDiaryInfo.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //注册数据库表
    [[QGDBManager shareManager] registerTableClass:@[[DBDiaryInfo class]] result:^(NSDictionary *response) {
        NSLog(@"%@",response);
    }];
    [self insertData];
    [self selectDate];
}

- (void)insertData{
    for (NSInteger i = 0; i < 100; i ++) {
        DBDiaryInfo *info = [[DBDiaryInfo alloc] init];
        info.title = [NSString stringWithFormat:@"日记标题：%ld",i];
        info.modifyDate = [NSDate date];
        info.createDate = [NSDate date];
        info.mold = @"开心";
        info.id = i;
        [[QGDBManager shareManager] insertData:info result:^(BOOL flag) {
            if (flag) {
                NSLog(@"第 %ld 条数据插入成功",i);
            }
        }];
    }
}

- (void)selectDate{
    DBDiaryInfo *info = [[DBDiaryInfo alloc] init];
    //不赋任何值 表示查询所有数据。
//    info.id = 2;  表示查询id 等于 2的记录   //删除和更新操作类似
//    info.id = 2;
    [[QGDBManager shareManager] selectData:info result:^(NSMutableArray *resultSet) {
        NSLog(@"总共有%ld条数据 %@",[resultSet count],resultSet);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
