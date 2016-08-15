//
//  YBDevice.h
//  YueBan
//
//  Created by etund on 16/8/15.
//  Copyright © 2016年 etund. All rights reserved.
//

#define signleton_h(name) + (instancetype)shared##name;


#define signleton_m(name) static id _instance;\
\
+ (instancetype)allocWithZone:(struct _NSZone *)zone{\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
_instance = [super allocWithZone:zone];\
});\
return _instance;\
}\
\
- (id)copyWithZone:(NSZone *)zone{\
return _instance;\
}\
\
+ (instancetype)shared##name{\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
_instance = [[self alloc] init];\
});\
return _instance;\
}


#import <Foundation/Foundation.h>

@interface YBDevice : NSObject

@property (nonatomic, copy) NSString *uuid;

signleton_h(Device)

@end
