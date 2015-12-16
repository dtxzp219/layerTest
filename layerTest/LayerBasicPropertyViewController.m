//
//  LayerBasicPropertyViewController.m
//  layerTest
//
//  Created by ios1 on 15/12/10.
//  Copyright © 2015年 zp. All rights reserved.
//

#import "LayerBasicPropertyViewController.h"

@interface LayerBasicPropertyViewController ()

@end

@implementation LayerBasicPropertyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    CALayer *layer=[CALayer layer];
    layer.backgroundColor=[UIColor redColor].CGColor;
    layer.bounds=CGRectMake(0, 0, 100, 100);
    //postion 设置calayer 在父图层中的位置，以父图层的左上角为原电(0,0)
    layer.position=CGPointMake(100, 200);
     //anchorPoint 锚点(定位点) 决定calayer 的哪个点在postion 属性所指的位置以自己的左上角为原点(0,0) 默认值(0.5,0.5) x-y取值卫(0-1) 右下角(1,1)
    layer.anchorPoint=CGPointMake(0, 0);
    layer.contents=(__bridge id _Nullable)([UIImage imageNamed:@"1.jpg"].CGImage);
    layer.shadowOffset=CGSizeMake(5, 5);
    //不透明度
    layer.shadowOpacity=1;
    layer.shadowRadius=2;
    [self.view.layer addSublayer:layer];
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
