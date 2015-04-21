//
//  QCallInfo.h
//  SDk
//
//  Created by tang.johannes on 15/2/6.
//  Copyright (c) 2015年 tang.johannes. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    QCallTypeUndefined = 0, /**< 未知  */
    QCallTypeDialled,       /**< 主叫  */
    QCallTypeReceived,      /**< 被叫  */
    QCallTypeMissed         /**< 未接  */
    
} QCallType;

typedef enum {
    CallStateNull,          /**< Before INVITE is sent or received  */
    CallStateCalling,	    /**< After INVITE is sent		    */
    CallStateIncoming,	    /**< After INVITE is received.	    */
    CallStateEarly,         /**< After response with To tag.	    */
    CallStateConnecting,	/**< After 2xx is sent/received.	    */
    CallStateConfirmed,	    /**< After ACK is sent/received.	    */
    CallStateDisconnected,  /**< Session is terminated.		    */
} CallState;

@interface QCallInfo : NSObject

@property(nonatomic, assign) int callId; //Qphone中id

@property(nonatomic, assign) CallState  callState;

@property(nonatomic, retain) NSString *sessionId;//会话id,可与CM中通话流水、录音等进行关联
@property(nonatomic, retain) NSString *phoneNumber;//电话号码
@property(nonatomic, retain) NSString *displayName;//显示名称
@property(nonatomic, assign) QCallType callType;
@property(nonatomic, retain) NSDate   *startDate;//开始时间

@end
