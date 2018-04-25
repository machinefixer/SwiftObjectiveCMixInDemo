//
//  DemoClass.h
//  SwiftInOCProject
//
//  Created by yuchen on 2018/4/25.
//  Copyright © 2018年 yuchen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DemoClass : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSUInteger bookID;

- (void)sayMyName;

@end
