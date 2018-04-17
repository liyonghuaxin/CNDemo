//
//  Person.h
//  Test2
//
//  Created by apple on 2018/4/17.
//  Copyright © 2018年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Person : UIViewController

@property (nonatomic, copy) void(^block)(void);
@property (nonatomic, strong) NSString *name;

@end
