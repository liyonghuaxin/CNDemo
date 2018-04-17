//
//  ViewController.m
//  CNDemo
//
//  Created by apple on 2018/4/17.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@property (nonatomic, strong) NSString *str;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"button" forState:UIControlStateNormal];
    btn.frame = CGRectMake(100, 200, 80, 30);
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)click:(id)sender {
    Person *person = [[Person alloc] init];
    __weak typeof(person) weakPer = person;
    person.block = ^{
        NSLog(@"%@",weakPer.name);

        __strong typeof(weakPer) strongPer = weakPer;
        NSLog(@"%@",strongPer.name);
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            NSLog(@"%@",strongPer.name);
        });
    };
    [self.navigationController pushViewController:person animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
