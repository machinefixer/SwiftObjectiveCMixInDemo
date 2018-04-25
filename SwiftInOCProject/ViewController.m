//
//  ViewController.m
//  SwiftInOCProject
//
//  Created by yuchen on 2018/4/25.
//  Copyright © 2018年 yuchen. All rights reserved.
//

#import "ViewController.h"
#import "SwiftInOCProject-Swift.h"


@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Call Swift method from Objective-C
    NSLog(@"Calling method from Objective-C:");
    [RunSwiftCode run];
    
    // Call Objective-C method from Swift
    RunSwiftCode *swiftInstance = [[RunSwiftCode alloc] init];
}


- (void)dealloc
{
    
}



@end
