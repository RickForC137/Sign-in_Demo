//
//  ViewController.m
//  Practice denglu 20
//
//  Created by ZDwork on 16/1/7.
//  Copyright © 2016年 ZDwork. All rights reserved.
//

#import "ViewController.h"
#import "ViewController01.h"

@interface ViewController ()

@property (nonatomic,strong) UITextField *nameTF;
@property (nonatomic,strong) UITextField *passwordTF;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor lightGrayColor];
    [self loadData];
}

- (void)loadData
{
    self.nameTF = [[UITextField alloc]initWithFrame:CGRectMake(50, 50, 100, 50)];
    self.nameTF.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.nameTF];
    
    self.passwordTF = [[UITextField alloc]initWithFrame:CGRectMake(50, 120, 100, 50)];
    self.passwordTF.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.passwordTF];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(50, 200, 100, 50)];
    btn.backgroundColor = [UIColor greenColor];
    [btn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClicked
{
    NSString *userName = self.nameTF.text;
    NSString *passWord = self.passwordTF.text;
    if ([userName isEqualToString:passWord])
    {
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        [userDefaults setObject:userName forKey:@"name"];
        [userDefaults setObject:passWord forKey:@"password"];
        [userDefaults synchronize];
        ViewController01 *vc = [[ViewController01 alloc]init];
        [self presentViewController:vc animated:YES completion:nil];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
