# TestExtern
extern 使用方法
extern关键字是什么意思呢？extern关键字可以声明外部变量，什么意思呢？就是使用公开全局变量。
例如：
#import <Foundation/Foundation.h>
#import "Foo.h"

NSInteger gVar = 5;//这是一个全局变量

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

Foo.h 文件：

#import <Foundation/Foundation.h>

@interface Foo : NSObject

-(void)setGVar:(NSInteger)var;

@end


Foo.m 文件：

#import "Foo.h"

@implementation Foo

-(void)setGVar:(NSInteger)var{
    extern NSInteger gVar; //在这里使用main中声明的全局变量，并改变它的值。
    gVar = var;
    
}

@end



打印结果：
2018-01-13 10:43:38.942515+0800 TestExtern[881:46734] Hello, World!
2018-01-13 10:43:38.942692+0800 TestExtern[881:46734] --- 5
2018-01-13 10:43:38.942707+0800 TestExtern[881:46734] ---------  100
Program ended with exit code: 0

