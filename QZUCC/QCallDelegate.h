//
//  QPhoneDelegate.h
//  SDk
//
//  Created by tang.johannes on 15/2/9.
//  Copyright (c) 2015年 tang.johannes. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QCallInfo.h"

@protocol QCallDelegate <NSObject>

@optional

/**
 * 电话呼入通知事件
 * @param callInfo 参见QCallInfo对象
 * @return
 */
- (void)onIncomingCall:(QCallInfo *)callInfo;

/**
 * 通话对象状态变化通知事件
 * @param callInfo 参见QCallInfo对象
 * @return
 */
- (void)onCallStateChanged:(QCallInfo *)callInfo;

@end