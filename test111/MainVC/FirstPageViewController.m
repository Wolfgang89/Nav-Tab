//
//  FirstPageViewController.m
//  test111
//
//  Created by panwg on 2019/4/27.
//  Copyright © 2019 WG. All rights reserved.
//

#import "FirstPageViewController.h"
#import "SearchViewController.h"

@interface FirstPageViewController ()

@end

@implementation FirstPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationController.navigationBar.hidden = YES;
    
    
    UIButton *bu =[UIButton buttonWithType:UIButtonTypeCustom];
    bu.center = self.view.center;
    bu.bounds = CGRectMake(0, 0, 100, 100);
    bu.backgroundColor = [UIColor yellowColor];
    [bu addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bu];
}
- (void)clickButton{
    
    [self.rt_navigationController pushViewController:[SearchViewController new] animated:YES];
    
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
