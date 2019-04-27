//
//  SearchViewController.m
//  test111
//
//  Created by panwg on 2019/4/27.
//  Copyright © 2019 WG. All rights reserved.
//

#import "SearchViewController.h"
#import "ListViewController.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    UIButton *bu =[UIButton buttonWithType:UIButtonTypeCustom];
    bu.center = self.view.center;
    bu.bounds = CGRectMake(0, 0, 100, 100);
    bu.backgroundColor = [UIColor yellowColor];
    [bu addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bu];
    
}
- (void)clickButton{
    
    [self.rt_navigationController pushViewController:[ListViewController new] animated:YES];
    
}
//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//
//    [self dismissViewControllerAnimated:YES completion:nil];
//}
//- (BOOL)hidesBottomBarWhenPushed{
//    return  YES;
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
