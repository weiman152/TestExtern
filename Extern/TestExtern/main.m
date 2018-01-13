//
//  main.m
//  TestExtern
//
//  Created by weiman on 2018/1/13.
//  Copyright © 2018年 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Foo.h"

NSInteger gVar = 5;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Foo * myFoo = [[Foo alloc] init];
        NSLog(@"--- %ld",gVar);
        [myFoo setGVar:100];
        NSLog(@"---------  %ld",gVar);
        
    }
    return 0;
}
