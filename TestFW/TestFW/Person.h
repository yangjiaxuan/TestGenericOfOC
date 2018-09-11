//
//  Person.h
//  TestFW
//
//  Created by 杨森 on 2018/9/10.
//  Copyright © 2018年 yangsen. All rights reserved.
//

/**
 * __covariant 协变 向上转型，子类转父类
 * __contravariant 逆变 向下转型，父类转子类
 */
#import <Foundation/Foundation.h>
#import "ObjectA.h"

@interface Person <__covariant T> : NSObject

@property (nonatomic ,  copy, nullable)NSString *name;

@property (nonatomic ,strong, nonnull)T object;

@property (nonatomic ,strong, nonnull)ObjectA *objectA;
@end
