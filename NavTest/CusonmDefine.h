//
//  CusonmDefine.h
//  NavTest
//
//  Created by 小龙虾 on 2017/5/8.
//  Copyright © 2017年 杭州迪火科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define NavigationBar_HEIGHT 44
#define SCREEN_WIDTH  ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.szie.height)
#define IOS_VERDION [[[UIDevice currentDevice] systemVersion] floatValue]
#define CurrentLanguage ([[NSLocale preferredLanguage] objectAtIndex:0])
//获取沙盒文件路径
#define kDocumentPath [NSSearchPathForDirectoriesInDomains（NSDocumentDirectory，NSUserDomainMask，YES）firstObject]
//获取沙盒temp路径（注：iPhone重启会清空
#define kTempPath NSTemporaryDirectory（）
//获取沙盒缓存路径
#define kCachePath [NSSearchPathForDirectoriesInDomains（NSCachesDirectory，NSUserDomainMask，YES）firstObject]
//获取程序包中程序路径
#define kResource(f,t) [[NSBundle mainBundle] pathForResource:(f) ofType:(t)]
