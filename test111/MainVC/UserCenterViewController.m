//
//  ViewController.m
//  test111
//
//  Created by panwg on 2019/4/17.
//  Copyright © 2019 WG. All rights reserved.
//

#import "UserCenterViewController.h"
#import "SearchViewController.h"
#import "ListViewController.h"

@interface UserCenterViewController ()

@end

@implementation UserCenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *bu =[UIButton buttonWithType:UIButtonTypeCustom];
    bu.center = self.view.center;
    bu.bounds = CGRectMake(0, 0, 100, 100);
    bu.backgroundColor = [UIColor blueColor];
    [bu addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bu];
//    [self.view addSubview:({
//        UILabel *label = [[UILabel alloc]init];
//        label.text = @"感受一下新的写法是不是很厉害别人怎么写代码是不是狠厉害是不是写的很好是不是有前途是十年啦激动和i句废话。皮肤片时间i和丝丝和 哦就很堵很看哦睡觉了了看会加速傻哈哈撒谎睡觉睡觉睡觉睡觉和世界经济学会想继续进行老死死死死死死死死";
//        [label sizeToFit];
//        label.numberOfLines = 0;
//
//        label.center= CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
//        label.bounds = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
//        label;
//    })];
//
        
}
- (void)clickButton{
//    [self.navigationController  presentViewController:[SearchViewController new] animated:YES completion:nil];
    
    [self.navigationController pushViewController:[ListViewController new] animated:YES];
    
}

@end
