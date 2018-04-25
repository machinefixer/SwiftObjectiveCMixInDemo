//
//  DemoClass.m
//  SwiftInOCProject
//
//  Created by yuchen on 2018/4/25.
//  Copyright © 2018年 yuchen. All rights reserved.
//

#import "DemoClass.h"

@implementation DemoClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"awesome name";
        self.bookID = 424242;
    }
    return self;
}

#pragma mark - Public Method

- (void)sayMyName
{
    NSLog(@"name: %@", self.name);
}

@end
