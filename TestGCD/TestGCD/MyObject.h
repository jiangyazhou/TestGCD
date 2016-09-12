//
//  MyObject.h
//  TestGCD
//
//  Created by jiang yazhou on 14/10/21.
//  Copyright (c) 2014年 Jiang Yazhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyObject : NSObject

@property (nonatomic, copy) void (^finishBlock)(MyObject *);

@end
