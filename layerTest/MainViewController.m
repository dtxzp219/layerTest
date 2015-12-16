//
//  MainViewController.m
//  layerTest
//
//  Created by ios1 on 15/12/7.
//  Copyright © 2015年 zp. All rights reserved.
//

#import "MainViewController.h"
#import "ShadowViewController.h"
#import "LayerBasicPropertyViewController.h"
#import "GeometryViewController.h"
#import "GroupAnimationViewController.h"
#import "ChangeViewController.h"
@interface MainViewController ()
@property(nonatomic,strong)CALayer *layer;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.layer=[CALayer layer];
    self.layer.frame=CGRectMake(20, 74, 200, 2);
    self.layer.backgroundColor=[UIColor greenColor].CGColor;
    [self.view.layer addSublayer:self.layer];
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/**
 *  隐式动画点击
 *
 *  @param sender btn
 */
- (IBAction)layerAnimationImplicit:(UIButton *)sender {
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(implicitAnimation) userInfo:nil repeats:YES];
}
-(void)implicitAnimation
{
    self.layer.frame=CGRectMake(20, 74, arc4random() % 100+arc4random() % 100, 2);
    
}

#pragma mark 转场动画
- (IBAction)AnimatedTransitions:(id)sender {
    //转场动画
    ChangeViewController *shadow=[[ChangeViewController alloc]init];
    [self.navigationController pushViewController:shadow animated:YES];
    
}
- (IBAction)shadowDemo:(id)sender {
    //阴影
    ShadowViewController *shadow=[[ShadowViewController alloc]init];
    [self.navigationController pushViewController:shadow animated:YES];
}
- (IBAction)catransform3DDemo:(UIButton *)sender {
    //catransform3D
    
}
- (IBAction)calayerBasicPropety:(UIButton *)sender {
    //layer属性
    LayerBasicPropertyViewController *layer=[[LayerBasicPropertyViewController alloc]init];
    [self.navigationController pushViewController:layer animated:YES];
}
- (IBAction)geometryDemo:(id)sender {
    //几何图形
    GeometryViewController *geometry=[[GeometryViewController alloc]init];
    [self.navigationController pushViewController:geometry animated:YES];
}
- (IBAction)groupAnimationController:(id)sender {
//  组动画
    GroupAnimationViewController *group=[[GroupAnimationViewController alloc]init];
    [self.navigationController pushViewController:group animated:YES];
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
