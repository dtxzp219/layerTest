//
//  GroupAnimationViewController.m
//  layerTest
//
//  Created by ios1 on 15/12/14.
//  Copyright © 2015年 zp. All rights reserved.
//

#import "GroupAnimationViewController.h"

@interface GroupAnimationViewController ()

@end

@implementation GroupAnimationViewController
{
   BOOL view1AnimationFlag;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    view1AnimationFlag=NO;
    UIView *view1=[[UIView alloc]initWithFrame:CGRectMake(20, 74, 100, 100)];
//    view1.backgroundColor=[UIColor redColor];
    view1.userInteractionEnabled=YES;
    CALayer *layer=[CALayer layer];
    layer.bounds=CGRectMake(20, 0, 100, 100);
    layer.backgroundColor=[UIColor yellowColor].CGColor;
    
//    layer.position=CGPointMake(50, 50);
    layer.zPosition=10;
//    layer.anchorPoint=CGPointMake(0, 0);
    [view1.layer addSublayer:layer];
    self.layer=layer;
    
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(startPathAnimation)];
    [view1 addGestureRecognizer:tap];
    [self.view addSubview:view1];
    
    
}

-(void)animationStart
{//bounds 动画
    if (view1AnimationFlag) {
        //开始动画
        view1AnimationFlag=NO;
        CABasicAnimation *animation=[CABasicAnimation animation];
        animation.keyPath=@"bounds";
        animation.toValue=[NSValue valueWithCGRect:CGRectMake(50, 50, 100,    100)];
        animation.duration=1;
        animation.removedOnCompletion=NO;
        animation.fillMode=@"forwards";
        //添加动画到图层
        [self.layer addAnimation:animation forKey:nil];
    }
    else
    {
        //开始动画
        view1AnimationFlag=YES;
        CABasicAnimation *animation=[CABasicAnimation animation];
        animation.keyPath=@"bounds";
        animation.toValue=[NSValue valueWithCGRect:CGRectMake(40, 40, 20, 20)];
        animation.duration=1;
        animation.removedOnCompletion=NO;
        animation.fillMode=@"forwards";
        //添加动画到图层
        [self.layer addAnimation:animation forKey:nil];
    }
   
}
-(void)animationPostion
{
    if (view1AnimationFlag) {
        view1AnimationFlag=NO;
        CABasicAnimation *animation=[CABasicAnimation animation];
        animation.duration=1;
//        animation.keyPath=@"position";
        animation.keyPath=@"zPosition";

        animation.toValue=[NSValue valueWithCGPoint:CGPointMake(50, 50)];
        animation.removedOnCompletion=NO;
        animation.fillMode=@"forwards";
        [self.layer addAnimation:animation forKey:nil];
        
    }
    else
    {
        view1AnimationFlag=YES;
        CABasicAnimation *animation=[CABasicAnimation animation];
        animation.duration=1;
//        animation.keyPath=@"position";
        animation.keyPath=@"zPosition";

//        animation.toValue=[NSValue valueWithCGVector:<#(CGVector)#>];
        animation.removedOnCompletion=NO;
        animation.fillMode=@"forwards";
        [self.layer addAnimation:animation forKey:nil];
    }
    CABasicAnimation *animation=[CABasicAnimation animation];
    animation.duration=1;
    animation.keyPath=@"position";
    animation.toValue=[NSValue valueWithCGPoint:CGPointMake(100, 100)];
    animation.removedOnCompletion=NO;
    animation.fillMode=@"forwards";
    [self.layer addAnimation:animation forKey:nil];

}
-(void)startPathAnimation
{
    //开始路径动画 关键帧动画
    CAKeyframeAnimation *animation=[CAKeyframeAnimation animation];
    animation.duration=2.0;
    animation.keyPath=@"position";
    animation.removedOnCompletion=NO;
    //保持最新的状态
    animation.fillMode=kCAFillModeBackwards;
    CGMutablePathRef path=CGPathCreateMutable();
    CGPathAddEllipseInRect(path, NULL, CGRectMake(100, 100, 200, 200));
//    CGPathAddRoundedRect(path, NULL, CGRectMake(50, 50, 200, 200), 40, 40);
    
    animation.path=path;
    //设置动画的节奏
    animation.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    [self.layer addAnimation:animation forKey:nil];
    
    
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
