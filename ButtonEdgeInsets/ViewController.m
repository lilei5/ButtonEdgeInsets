//
//  ViewController.m
//  ButtonEdgeInsets
//
//  Created by lilei on 17/3/2.
//  Copyright © 2017年 lilei. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+EdgeInsets.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 100)];
    btn.center = self.view.center;
    btn.backgroundColor = [UIColor cyanColor];
    [btn setImage:[UIImage imageNamed:@"logo"] forState:UIControlStateNormal];
    [btn setTitle:@"lqwawa" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    // 下图片 上文字
    [btn setupEdgeInsetsByDirection:LLButtonImageDirectionBottom];
    

}




@end
