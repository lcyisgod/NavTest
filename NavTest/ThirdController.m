//
//  ThirdController.m
//  NavTest
//
//  Created by 小龙虾 on 2017/5/3.
//  Copyright © 2017年 杭州迪火科技有限公司. All rights reserved.
//

#import "ThirdController.h"

@interface ThirdController ()<UIGestureRecognizerDelegate>

@end

@implementation ThirdController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self.navigationItem setTitle:@"测试全屏滑动"];
    
    //获取系统自带滑动手势的target对象
    id target = self.navigationController.interactivePopGestureRecognizer.delegate;
    
    //创建全屏滑动手势,调用系统自带滑动手势的target的action方法
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:target action:@selector(handleNavigationTransition:)];
    //设置手势代理，拦截手势触发
    pan.delegate = self;
    
    //给导航控制器的view添加全屏滑动手势
    [self.view addGestureRecognizer:pan];
    
    //禁止使用系统自带的滑动手势
    self.navigationController.interactivePopGestureRecognizer.enabled = NO;
}

-(void)handleNavigationTransition:(UIPanGestureRecognizer *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
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
