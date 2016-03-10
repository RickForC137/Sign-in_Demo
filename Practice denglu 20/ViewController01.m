

//
//  ViewController01.m
//  Practice denglu 20
//
//  Created by ZDwork on 16/1/7.
//  Copyright © 2016年 ZDwork. All rights reserved.
//

#import "ViewController01.h"

@interface ViewController01 ()

@end

@implementation ViewController01

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    
    [self loadData];
    
}

- (void)loadData

{
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(50, 50, 50, 50)];
    btn.backgroundColor = [UIColor grayColor];
    [btn addTarget:self action:@selector(btnCliecked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnCliecked
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    //移除UserDefaults中存储的用户信息
    [userDefaults removeObjectForKey:@"name"];
    [userDefaults removeObjectForKey:@"password"];
    [userDefaults synchronize];
    
    NSLog(@"11111");
    //模态展示出登陆页面
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
