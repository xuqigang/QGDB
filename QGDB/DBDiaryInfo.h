//
//  DBDiaryInfo.h
//  QGDB
//
//  Created by Hanxiaojie on 2018/6/29.
//  Copyright © 2018年 徐其岗. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBDiaryInfo : NSObject

@property (nonatomic, assign) NSInteger id;    //一条记录的ID
@property (nonatomic, assign) NSInteger classificationId; //分类ID
@property (nonatomic, strong) NSDate *createDate;  //创建日期
@property (nonatomic, strong) NSDate *modifyDate;  //修改日期
@property (nonatomic, strong) NSDate *diaryDate;  //日记日期
@property (nonatomic, assign) NSInteger uId;   //用户ID
@property (nonatomic, assign) NSInteger diaryType; //日记类型
@property (nonatomic, strong) NSString *weather;  //天气
@property (nonatomic, strong) NSString *mold;     //心情
@property (nonatomic, strong) NSString *title;   //日记标题
@property (nonatomic, strong) NSString *contents;  //日记内容

@end

