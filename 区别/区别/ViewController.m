//
//  ViewController.m
//  区别
//
//  Created by 章芝源 on 16/1/11.
//  Copyright © 2016年 ZZY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong)UIView *redView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置UI
    [self setupUI];
}

- (void)setupUI
{
    UIView *redView = [[UIView alloc]init];
    redView.backgroundColor = [UIColor redColor];
    redView.frame = CGRectMake(100, 100, 200, 200);
    [self.view addSubview:redView];
    self.redView = redView;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)];
    tap.numberOfTapsRequired = 2;
    
    [self.redView addGestureRecognizer:tap];
    
    UIButton *button = [[UIButton alloc]init];
    button.frame  =  CGRectMake(0, 0, 100, 100);
    button.multipleTouchEnabled = YES;
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchDownRepeat];
    [self.view addSubview:button];
    
//    UIButton *customBtn = [[UIButton alloc]init];
//    customBtn.frame = CGRectMake(0, 400, 100, 100);
//    customBtn.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:customBtn];
//    customBtn addTarget:self action:@selector(<#selector#>) forControlEvents:<#(UIControlEvents)#>
}



- (void)tap:(UITapGestureRecognizer *)tap
{
    NSLog(@"我被双击了");
}

- (void)clickBtn
{
    NSLog(@"我也被点击了");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
//    if ([[[event allTouches] anyObject]tapCount] == 2) {
//        NSLog(@"我被点击3");
//    }
    
    if ([[touches anyObject]tapCount] == 2) {
        NSLog(@"我被点击3");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
