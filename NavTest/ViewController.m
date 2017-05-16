//
//  ViewController.m
//  NavTest
//
//  Created by 小龙虾 on 2017/5/3.
//  Copyright © 2017年 杭州迪火科技有限公司. All rights reserved.
//

#import "ViewController.h"
#import "SecondVC.h"
#import "ThirdController.h"
#import "KLTNavigationController.h"
#import "CusonmDefine.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.navigationItem setTitle:@"第一个"];
    //设置titile的字体颜色
    UIColor *whiteColor = [UIColor redColor];
    NSDictionary *dic = [NSDictionary dictionaryWithObject:whiteColor forKey:NSForegroundColorAttributeName];
    [self.navigationController.navigationBar setTitleTextAttributes:dic];
    self.navigationController.navigationBar.backgroundColor = [UIColor redColor];
    UIBarButtonItem *rithtBtn = [[UIBarButtonItem alloc] initWithTitle:@"下一个" style:UIBarButtonItemStyleDone target:self action:@selector(secVC:)];
    [self.navigationItem setRightBarButtonItem:rithtBtn];
    
}

-(void)secVC:(UIBarButtonItem *)sender
{
    //测试调整导航栏按钮的位置
//    SecondVC *seVC = [[SecondVC alloc] init];
//    [self.navigationController pushViewController:seVC animated:YES];
    //测试全屏滑动
    ThirdController *thidVC = [[ThirdController alloc] init];
    [self.navigationController pushViewController:thidVC animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
