//
//  Target_MokoPlug_BML_Module.h
//  MKBLEMokoLife_Example
//
//  Created by aa on 2022/4/7.
//  Copyright © 2022 aadyx2007@163.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_MokoPlug_BML_Module : NSObject

/// 扫描页面
/*
 @{
 @"deviceType":@"0"
 }
 @"0":MK114B    @"1":MK115B    @"2":MK116B
 */
- (UIViewController *)Action_MokoPlug_BML_Module_ScanController:(NSDictionary *)params;


/// 关于页面
/*
 @{
 @"deviceType":@"0"
 }
 @"0":MK114B    @"1":MK115B    @"2":MK116B
 */
- (UIViewController *)Action_MokoPlug_BML_Module_AboutController:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
