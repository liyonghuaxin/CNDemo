//
//  Person.m
//  Test2
//
//  Created by apple on 2018/4/17.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)dealloc{
    NSLog(@"%s",__func__);
}

-(void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _name = @"lyh";
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    if (_block) {
        _block();
    }
}
@end
