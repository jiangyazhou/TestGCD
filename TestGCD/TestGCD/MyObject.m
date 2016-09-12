//
//  MyObject.m
//  TestGCD
//
//  Created by jiang yazhou on 14/10/21.
//  Copyright (c) 2014年 Jiang Yazhou. All rights reserved.
//

#import "MyObject.h"

@implementation MyObject


- (void)dealloc
{
    self.finishBlock = nil;
    
    [super dealloc];
}


@end
