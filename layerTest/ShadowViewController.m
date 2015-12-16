//
//  ShadowViewController.m
//  layerTest
//
//  Created by ios1 on 15/12/10.
//  Copyright © 2015年 zp. All rights reserved.
//

#import "ShadowViewController.h"

@interface ShadowViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *xLB;
@property (weak, nonatomic) IBOutlet UISlider *xSlider;
@property (weak, nonatomic) IBOutlet UILabel *yLB;
@property (weak, nonatomic) IBOutlet UISlider *ySlider;

@property (weak, nonatomic) IBOutlet UILabel *zLB;
@property (weak, nonatomic) IBOutlet UISlider *zSlider;
@property (weak, nonatomic) IBOutlet UILabel *radiaLB;
@property (weak, nonatomic) IBOutlet UISlider *radiaoSlider;
@end

@implementation ShadowViewController
{
    int radio;
}
double radians(float degrees) {
    return ( degrees * 3.14159265 ) / 180.0;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    self.imageView.layer.shadowColor=[UIColor yellowColor].CGColor;
    self.imageView.layer.shadowRadius=10;
    //阴影 的偏移大小
    self.imageView.layer.shadowOffset=CGSizeMake(20, 20);
    //不透明度
    self.imageView.layer.shadowOpacity=0.8;
    self.imageView.layer.transform=CATransform3DMakeRotation(self.radiaoSlider.value, self.xSlider.value, self.ySlider.value, self.zSlider.value);
    radio=0;
//    [self performSelector:@selector(startAnimaLLLLL) withObject:self afterDelay:3.0];
    [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(startRotationAnimation) userInfo:nil repeats:YES];

}
-(void)startRotationAnimation
{
    
    radio= radio+1;
    NSLog(@"second :%d",radio);
    [UIView animateWithDuration:0.01 animations:^{
        self.imageView.layer.transform=CATransform3DMakeRotation(radians(radio), 1, 0, 1);

    } completion:nil];
    
}
- (IBAction)xValueChange:(UISlider *)sender {
    NSLog(@"x  %f",sender.value);
    self.imageView.layer.transform=CATransform3DMakeRotation(self.radiaoSlider.value, self.xSlider.value, self.ySlider.value, self.zSlider.value);

}
- (IBAction)yValueChange:(UISlider *)sender {
    NSLog(@"y  %f",sender.value);
    self.imageView.layer.transform=CATransform3DMakeRotation(self.radiaoSlider.value, self.xSlider.value, self.ySlider.value, self.zSlider.value);

}

- (IBAction)zValueChange:(UISlider *)sender {
    NSLog(@"z  %f",sender.value);
    self.imageView.layer.transform=CATransform3DMakeRotation(self.radiaoSlider.value, self.xSlider.value, self.ySlider.value, self.zSlider.value);
}
- (IBAction)radiaoValueChange:(UISlider *)sender {
    NSLog(@"radiao  %f",sender.value);
    self.imageView.layer.transform=CATransform3DMakeRotation(self.radiaoSlider.value, self.xSlider.value, self.ySlider.value, self.zSlider.value);
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
