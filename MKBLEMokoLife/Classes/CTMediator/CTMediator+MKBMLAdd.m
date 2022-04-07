//
//  CTMediator+MKBMLAdd.m
//  MKBLEMokoLife_Example
//
//  Created by aa on 2021/4/29.
//  Copyright © 2021 aadyx2007@163.com. All rights reserved.
//

#import "CTMediator+MKBMLAdd.h"

#import "MKMacroDefines.h"

#import "MKMokoPlugBMLModuleKey.h"

@implementation CTMediator (MKBMLAdd)

- (UIViewController *)CTMediator_MokoPlug_BML_AboutPage:(NSString *)deviceType {
    UIViewController *viewController = [self performTarget:kTarget_MokoPlug_module
                                                    action:kAction_MokoPlug_aboutPage
                                                    params:@{@"deviceType":SafeStr(deviceType)}
                                         shouldCacheTarget:NO];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    }
    return [self performTarget:kTarget_MokoPlug_bml_module
                        action:kAction_MokoPlug_bml_aboutPage
                        params:@{@"deviceType":SafeStr(deviceType)}
             shouldCacheTarget:NO];
}

#pragma mark - private method
- (UIViewController *)Action_MokoPlug_ViewControllerWithTarget:(NSString *)targetName
                                                        action:(NSString *)actionName
                                                        params:(NSDictionary *)params{
    UIViewController *viewController = [self performTarget:targetName
                                                    action:actionName
                                                    params:params
                                         shouldCacheTarget:NO];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        return [[UIViewController alloc] init];
    }
}

@end
