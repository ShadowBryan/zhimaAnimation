//
//  ViewController.m
//  zhimaDemo
//
//  Created by 余金 on 16/3/12.
//  Copyright © 2016年 fengzhi. All rights reserved.
//

#import "ViewController.h"
#import "ProgressView.h"

@interface ViewController ()
@property (nonatomic, strong) ProgressView *progress;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.progress = [[ProgressView alloc]initWithFrame:CGRectMake(20, 70, 280,280 )];
    self.progress.mainImageView.image = [UIImage imageNamed:@"backgroundImage@2x"];
    self.progress.percent = 0;
    [self.view addSubview:self.progress];
    
    
    
    UIButton *start = [UIButton buttonWithType:UIButtonTypeCustom];
    start.frame = CGRectMake(40, 400, 240, 40);
    [start setTitle:@"start" forState:UIControlStateNormal];
    [start addTarget:self action:@selector(start:) forControlEvents:UIControlEventTouchUpInside];
    start.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:start];
    
}

- (void)start:(UIButton *)btn{
    self.progress.percent = 90.0;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
