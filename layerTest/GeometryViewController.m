//
//  GeometryViewController.m
//  layerTest
//
//  Created by ios1 on 15/12/10.
//  Copyright © 2015年 zp. All rights reserved.
//

#import "GeometryViewController.h"
#import "GeometryLayer.h"
@interface GeometryViewController ()

@end

@implementation GeometryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //圆
//    
//    UIView *circleView=[[UIView alloc]initWithFrame:CGRectMake(100, 100, 300, 300)];
//    [self.view addSubview:circleView];
//    
//    
//    GeometryLayer *circle=[GeometryLayer layer];
//    circle.bounds=CGRectMake(0, 0, 300, 300);
////    circle.position=CGPointMake(0, 10);
//    circle.anchorPoint=CGPointMake(0, 0);
//    //当图形上下文改变 必须调用此方法
//    [circle setNeedsDisplay];
//    [circleView.layer addSublayer:circle];
    
//    UIView *triangleView=[[UIView alloc]initWithFrame:CGRectMake(10, 100, 100, 100)];
//    [self.view addSubview:triangleView];
    
    
    CustomView *custom=[[CustomView alloc]initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width , [UIScreen mainScreen].bounds.size.height-70 )];
    custom.backgroundColor=[UIColor clearColor];
    [self.view addSubview:custom];
    

}
//-(void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx
//{
//    //代理方法绘制
//    
//    
//    //1.获得图形上下文
////    CGContextRef context = UIGraphicsGetCurrentContext();
////    
////    //将上下文复制一份到栈中
////    CGContextSaveGState(context);
//    
//
//    
//    
//    //画线
//    
////    CGContextSetLineWidth(ctx, 50);
////    CGContextSetLineCap(ctx, kCGLineCapButt);
////        CGContextSetRGBStrokeColor(ctx, 1, 0, 0, 1);
////    CGContextMoveToPoint(ctx, 10, 10);
////    CGContextAddLineToPoint(ctx, 60, 60);
////    //填充的形式
////    CGContextFillPath(ctx);
////    //描边
////    CGContextStrokePath(ctx);
//    
//    //画矩形
////    CGContextFillPath(ctx);
//    //画椭圆
////    CGContextFillEllipseInRect(ctx, layer.bounds);
//    
//}
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
