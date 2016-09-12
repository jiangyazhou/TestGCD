//
//  GCDViewController.m
//  TestGCD
//
//  Created by jiang yazhou on 13-8-29.
//  Copyright (c) 2013年 Jiang Yazhou. All rights reserved.
//

#include <sys/socket.h>
#include <netdb.h>
#include <arpa/inet.h>
#include <err.h>

#import "GCDViewController.h"

#import "MyObject.h"


@interface GCDObject : NSObject {
    dispatch_queue_t _syncQueue;
}

@property (nonatomic, retain) NSString *someString;

@end


@implementation GCDObject

- (instancetype)init
{
    self = [super init];
    if (self) {
        _syncQueue = dispatch_queue_create("com.effectiveObjectiveC.syncQueue", NULL);
    }
    
    return self;
}





- (void)setSomeString:(NSString *)someString
{
    dispatch_sync(_syncQueue, ^{
        [_someString autorelease];
        _someString = someString;
        [NSThread sleepForTimeInterval:2.0f];
    });
}

@end



@implementation GCDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    __block int a = 0;
    
    dispatch_source_t source = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, DISPATCH_TARGET_QUEUE_DEFAULT);
    dispatch_source_set_event_handler(source, ^(){
        a++;
        NSLog(@"a:%d", a);
    });
    dispatch_source_set_timer(source, DISPATCH_TIME_NOW, 1 * NSEC_PER_SEC, 100 * NSEC_PER_MSEC);
    dispatch_resume(source);
}


@end
