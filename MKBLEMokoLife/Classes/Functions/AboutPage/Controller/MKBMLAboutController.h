//
//  MKBMLAboutController.h
//  MKBLEMokoLife_Example
//
//  Created by aa on 2021/4/30.
//  Copyright © 2021 aadyx2007@163.com. All rights reserved.
//

#import <MKBaseModuleLibrary/MKBaseViewController.h>

NS_ASSUME_NONNULL_BEGIN

@interface MKBMLAboutController : MKBaseViewController

/// 当前用户选择的设备类型
/// @"0":MK114B    @"1":MK115B    @"2":MK116B
@property (nonatomic, copy)NSString *deviceType;

@end

NS_ASSUME_NONNULL_END
