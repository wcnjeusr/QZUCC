//
//  QZUCC.m
//  QZUCC
//
//  Created by hundsun on 15/4/19.
//  Copyright (c) 2015年 Hundsun Inc. All rights reserved.
//

#import "QZUCC.h"

@implementation QZUCC
#pragma mark - init

/**
 * 获取QZUCC实例对象
 */
+ (id)getInstance{
    static QZUCC *sharedInstance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

/**
 * 查询各能力状态
 * @param abilityOption 能力值组合，json组数形式字符串，如：[AbilityIM, AbilityPhone, AbilityAgent]
 * @param iconImage icon图标
 * @param delete 回调delegate
 * @return
 */
+ (void)initWithAbility:(NSString *)abilityOption icon:(UIImage *)iconImage  delete:(id<QZUCCDelegate>)theDelete{
    
}

/**
 * 权限校验，连接各能力模块
 * @param ucmUrl ucm主服务地址
 * @param qzId   青芝Id
 * @param authToken  青芝Id相关的校验token
 * @param deviceToken apns唤醒所涉及的64字节设备Token
 * @param completion  连接权限校验成功回调该block
 * @param fail 连接权限校验失败回调该block
 * @return
 */
- (void)connectWithUCMUrl:(NSString *)ucmUrl qzId:(NSString *)qzId authToken:(NSString *)authToken deviceToken:(NSString *)deviceToken completion:(void (^)(void))completion fail:(void (^)(NSError *error))fail{
    
}

/**
 * 断开连接以及清理相关资源
 */
- (void)disconnect{
    
}

/**
 * 查询各能力状态
 * @param ability 能力值，取值参见ability常量
 * @return int 状态值，取值0、1，其中1--初始化完成且连接成功，0则是断开连接
 */
- (int)getAbilityState:(NSString *)ability{
    return 1;
}

#pragma mark - Notification

/**
 * 解析Apns唤醒内容
 * 应用在-application:didReceiveRemoteNotification:系统回调方法内
 * @param userInfo
 * @return int 是否是QZUCC内容，若返回YES则是QZUCC内容，反之则不是，则需要第三方应用自身做后续解析；
 */
- (BOOL)parseReceiveRemoteNotification:(NSDictionary *)userInfo{
    return YES;
}

/**
 * 解析本地通知内容
 * 应用在-application:didReceiveLocalNotification:系统回调方法内
 * @param userInfo
 * @return int 是否是QZUCC内容，若返回YES则是QZUCC内容，反之则不是，则需要第三方应用自身做后续解析；
 */
- (BOOL)parseReceiveLocalNotification:(NSDictionary *)userInfo{
    return YES;
}

#pragma mark - 消息

//进入消息列表
- (void)pushMsgListFromViewController:(UIViewController *)viewController{
    
}
- (void)presentMsgListFromViewController:(UIViewController *)viewController completion:(void(^)(void))completion{
    
}

//进入聊天窗口
- (void)pushChatFromViewController:(UIViewController *)viewController target:(QUserInfo *)targetQUsrInfo{
    
}
- (void)presentChatFromViewController:(UIViewController *)viewController target:(QUserInfo *)targetQUsrInfo completion:(void(^)(void))completion{
    
}

/**
 * 发送普通文本消息
 * @param targetId 接收者Id
 *        -- 取值范围：
 *        --   1.普通用户，则直接填写qz_id;
 *        --   2.后台服务中消息中转代理模块的特定用户，则由后台开发人员指定;
 * @param content 消息内容
 *		  -- 其中特殊用户使用场景时，可用于传递自定义数据格式内容
 * @param completion
 * @param fail
 */
- (void)sendTextMessage:(NSString *)targetId content:(NSString *)content completion:(void(^)(void))completion fail:(void (^)(NSError *error))fail{
    
}

#pragma mark - 电话

/**
 * 电话通知事件的订阅、取消
 * @param delegate
 * @return
 */
- (void)addCallEventObserver:(id<QCallDelegate>)theDelegate{
    
}
- (void)removeCallEventObserver:(id<QCallDelegate>)theDelegate{
    
}

//拨打电话(其中：Line - 普通ip线路， OneNum - 一号通，其下可能绑定line、普通电话、固话等)
- (void)dialLine:(NSString *)qzId completion:(void(^)(void))completion fail:(void (^)(NSError *error))fail{
    
}
- (void)dialOneNum:(NSString *)qzId completion:(void(^)(void))completion fail:(void (^)(NSError *error))fail{
    
}

- (void)dialPhone:(NSString *)phoneNumber completion:(void(^)(void))completion fail:(void (^)(NSError *error))fail{
    
}


//进入移动坐席管理界面
- (void)pushAgentFromViewController:(UIViewController *)viewController{
    
}
- (void)presentAgentFromViewController:(UIViewController *)viewController completion:(void(^)(void))completion{
    
}

/*
 * 座席签入
 * @param agentId 座席Id或工号
 * @param pwd 密码
 * @param telType 电话类型，详见AgentTelType枚举定义
 * @param phone 仅telType = AgentTelTypeNormal取值时需要填值，其他情况一律置nil
 * @param completion
 * @param fail
 * @return
 */
- (void)loginAgentWithId:(NSString *)agentId password:(NSString *)pwd telType:(AgentTelType)telType phone:(NSString *)phone completion:(void(^)(void))completion fail:(void (^)(NSError *error))fail{
    
}

//座席签出
- (void)logoutAgent:(void(^)(void))completion fail:(void (^)(NSError *error))fail{
    
}

//设置座席置忙、就绪
- (void)setAgentStatusReady:(void(^)(void))completion fail:(void (^)(NSError *error))fail{
    completion();
}
- (void)setAgentStatusBusy:(void(^)(void))completion fail:(void (^)(NSError *error))fail{
    completion();
}

/**
 * 坐席身份外呼
 * @param targetType  - 参见AgentCallTarget枚举
 * @param target - 其中取值范围根据targetType决定，具体如下：
 AgentCallTargetAgent时，target则填写agent Id,
 AgentCallTargetTel时，target则填写普通电话,
 AgentCallTargetLineNumber、AgentCallTargetOneNumber时，target则填写qzId,
 * @param completion
 * @param fail
 * @return
 */
- (void)dialASAgent:(AgentCallTarget)targetType target:(NSString *)target completion:(void(^)(void))completion fail:(void (^)(NSError *error))fail{
    
}


@end
