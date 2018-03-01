//
//  ViewController.m
//  接单动画
//
//  Created by 123456789 on 2018/3/1.
//  Copyright © 2018年 123456789. All rights reserved.
//

#import "ViewController.h"
#import "SPCircleProgress.h"

@interface ViewController ()
@property(nonatomic,strong)SPCircleProgress *circleProgressView;
@end

@implementation ViewController

#pragma mark - 懒加载
- (SPCircleProgress *)circleProgressView {
    if (!_circleProgressView) {
        CGFloat xCrack = [UIScreen mainScreen].bounds.size.width/6.f;
        CGFloat yCrack = [UIScreen mainScreen].bounds.size.height/4.f;
        CGFloat itemWidth = [UIScreen mainScreen].bounds.size.width - 30.f*2;
        
        //自定义起始角度
        _circleProgressView = [[SPCircleProgress alloc] initWithFrame:CGRectMake(xCrack, yCrack, itemWidth, itemWidth)
                                                        pathBackColor:[UIColor lightGrayColor]
                                                        pathFillColor:[UIColor orangeColor]
                                                           startAngle:135
                                                          strokeWidth:20];
        _circleProgressView.frame = CGRectMake(40, 100, [UIScreen mainScreen].bounds.size.width - 40 * 2, [UIScreen mainScreen].bounds.size.width - 40 * 2);
        _circleProgressView.showPoint = YES;
        _circleProgressView.showProgressText = NO;
        _circleProgressView.reduceValue = 90;
        _circleProgressView.hidden = NO;
    }
    return _circleProgressView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.circleProgressView];
    self.circleProgressView.alltime = 100;
    self.circleProgressView.progress = 1;
    self.circleProgressView.endTime = ^{
        NSLog(@"%@",@"计时结束");
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
