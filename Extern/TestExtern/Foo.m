//
//  Foo.m
//  TestExtern
//
//  Created by weiman on 2018/1/13.
//  Copyright © 2018年 weiman. All rights reserved.
//

#import "Foo.h"

@implementation Foo

-(void)setGVar:(NSInteger)var{
    extern NSInteger gVar;
    gVar = var;
    
}

@end
