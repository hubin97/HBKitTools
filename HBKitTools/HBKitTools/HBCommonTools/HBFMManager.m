
//
//  HBFMManager.m
//  noticelist
//
//  Created by Hubin_Huang on 2019/3/29.
//  Copyright © 2018年 平安产险. All rights reserved.
//

#import "HBFMManager.h"
#import "FMDB.h"

#ifdef DEBUG
#define DLog(fmt,...)     NSLog((@"【Function:%s】【LineNum:%d】" fmt),__FUNCTION__,__LINE__,##__VA_ARGS__)
#else
#define DLog(format,...)
#endif

static NSString * const databaseFileName = @"defalut.db";

@implementation HBFMManager

static HBFMManager *fmmanager = nil;
+ (HBFMManager *)manager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        fmmanager = [[HBFMManager alloc] init];
    });
    return fmmanager;
}


- (void)openDatabase {
    
    if (![self.database open]) {
        DLog(@"open database fail!");
        //self.database = nil;
        return;
    } else {
        DLog(@"open database success!");
    }
}

#pragma mark - Lazy loading
- (FMDatabase *)database {
    
    if (_database == nil) {
        
        NSString *docpath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES) firstObject];
        NSString *path = _databaseName? [docpath stringByAppendingPathComponent:_databaseName] : [docpath stringByAppendingPathComponent:databaseFileName];
        DLog(@"database path:%@",path);

        _database = [FMDatabase databaseWithPath:path];
    }
    return _database;
}

#pragma mark - Setter / getter
- (void)setDatabaseName:(NSString *)databaseName {
    _databaseName = databaseName;
}

@end
