//
//  QAgentInfo.h
//  QZUCC
//
//  Created by tang.johannes on 15/3/17.
//  Copyright (c) 2015年 tang.johannes. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    AgentTelTypeNormal,     //普通电话
    AgentTelTypeLineNumber, //当前ip电话
    AgentTelTypeOneNumber   //当前一号通
}AgentTelType;

@interface QAgentInfo : NSObject

#pragma mark - @property

@property(nonatomic, copy) NSString *agentId;//座席Id或工号

//接听方式
@property(nonatomic, assign) AgentTelType telType;
@property(nonatomic, copy) NSString *tel;//仅非网络电话时提供

@property(nonatomic, copy) NSString *agentStatus;//座席状态
@property(nonatomic, copy) NSString *agentStatusReason;

@property(nonatomic, copy) NSString *deviceStatus;//设备状态
@property(nonatomic, copy) NSString *serviceStatus;//服务状态状态

@property(nonatomic, assign, getter=isLogin) BOOL login;//YES - 表示这个事件是因为坐席签入产生
@property(nonatomic, assign) BOOL ready;//是否就绪, 若NO-则为忙
@property(nonatomic, assign) BOOL offline;//是否离线

@property(nonatomic, copy) NSString *statusDesc;//当前状态座席状态整体描述

@end
