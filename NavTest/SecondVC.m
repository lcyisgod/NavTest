//
//  SecondVC.m
//  NavTest
//
//  Created by 小龙虾 on 2017/5/3.
//  Copyright © 2017年 杭州迪火科技有限公司. All rights reserved.
//

#import "SecondVC.h"
#import "ThirdController.h"

@interface SecondVC ()<UIGestureRecognizerDelegate>

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self.navigationItem setTitle:@"调整按钮位置"];
    //由于添加了自定义的按钮导致返回手势失败，此处用于开启返回的手势功能
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back"] style:UIBarButtonItemStyleDone target:self action:@selector(backTop:)];
    //创建UIBarButtonSystemItemFixedSpace
    //苹果提供的UIButtonBarItem 中有个叫做UIBarButtonSystemItemFixedSpace的控件，利用它，我们就可以轻松调整返回按钮的位置
    UIBarButtonItem *spaceItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    //调整宽度
    spaceItem.width = -15;
    [self.navigationItem setLeftBarButtonItems:@[spaceItem,leftBtn]];
    
    UIButton *rightBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 60, 15)];
    [rightBtn setTitle:@"测试全屏滑动" forState:UIControlStateNormal];
    [rightBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [rightBtn addTarget:self action:@selector(nextVC:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *right = [[UIBarButtonItem alloc] initWithCustomView:rightBtn];
    [self.navigationItem setRightBarButtonItem:right];
}

-(void)backTop:(UIBarButtonItem *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)nextVC:(UIButton *)sender
{
    ThirdController *thVC = [[ThirdController alloc] init];
    [self.navigationController pushViewController:thVC animated:YES];
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
