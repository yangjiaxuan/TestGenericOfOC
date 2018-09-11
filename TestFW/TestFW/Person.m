//
//  Person.m
//  TestFW
//
//  Created by 杨森 on 2018/9/10.
//  Copyright © 2018年 yangsen. All rights reserved.
//

// OC 是弱语言，本身在没有赋值的时候无法获取值的类型，
#import "Person.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation Person

- (instancetype)init{
    if (self = [super init]) {
        [self initObject];
    }
    return self;
}

- (void)initObject{
    u_int count;
    objc_property_t *properties = class_copyPropertyList(self.class, &count);
    for (u_int i = 0; i<count; i++) {
        NSString *name = @(property_getName(properties[i]));
        NSString *type = @(property_getAttributes(properties[i]));
        NSLog(@"name:%@  type:%@ \r\n ",name,type);
        
        NSUInteger dotLoc = [type rangeOfString:@","].location;
        NSString *code    = nil;
        NSUInteger loc    = 1;
        if (dotLoc == NSNotFound) {
            code = [type substringFromIndex:loc];
        } else {
            code = [type substringWithRange:NSMakeRange(loc, dotLoc - loc)];
        }
        NSLog(@"=== class:%@ === \r\n", code);
    }
    free(properties);
}

@end
