//
//  HBFMManager.h
//  noticelist
//
//  Created by Hubin_Huang on 2019/3/29.
//  Copyright © 2018年 平安产险. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class FMDatabase;

@interface HBFMManager : NSObject

/** 单例 */
+ (HBFMManager *)manager;

/** 数据库名 注意: 若要指定数据库路径及名称,必须在初始化database之前调用*/
@property (nonatomic, strong) NSString *databaseName;

/** 数据库对象实例 */
@property (nonatomic, strong) FMDatabase *database;

/**
 打卡数据库
 一直打开即可,fmdb open/close cpu占用率很高
 */
- (void)openDatabase;

@end

NS_ASSUME_NONNULL_END
