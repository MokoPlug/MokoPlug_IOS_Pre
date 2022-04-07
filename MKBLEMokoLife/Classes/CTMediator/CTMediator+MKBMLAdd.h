//
//  CTMediator+MKBMLAdd.h
//  MKBLEMokoLife_Example
//
//  Created by aa on 2021/4/29.
//  Copyright © 2021 aadyx2007@163.com. All rights reserved.
//

#import <CTMediator/CTMediator.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (MKBMLAdd)

/// 关于页面
/// @param deviceType 设备类型
/*
 @"0":MK114B
 @"1":MK115B
 @"2":MK116B
 */
- (UIViewController *)CTMediator_MokoPlug_BML_AboutPage:(NSString *)deviceType;

@end

NS_ASSUME_NONNULL_END
