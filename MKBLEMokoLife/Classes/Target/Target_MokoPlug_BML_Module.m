//
//  Target_MokoPlug_BML_Module.m
//  MKBLEMokoLife_Example
//
//  Created by aa on 2022/4/7.
//  Copyright © 2022 aadyx2007@163.com. All rights reserved.
//

#import "Target_MokoPlug_BML_Module.h"

#import "MKBMLScanController.h"
#import "MKBMLAboutController.h"

@implementation Target_MokoPlug_BML_Module

/// 扫描页面
- (UIViewController *)Action_MokoPlug_BML_Module_ScanController:(NSDictionary *)params {
    MKBMLScanController *vc = [[MKBMLScanController alloc] init];
    vc.deviceType = params[@"deviceType"];
    return vc;
}

/// 关于页面
- (UIViewController *)Action_MokoPlug_BML_Module_AboutController:(NSDictionary *)params {
    MKBMLAboutController *vc = [[MKBMLAboutController alloc] init];
    vc.deviceType = params[@"deviceType"];
    return vc;
}

@end
