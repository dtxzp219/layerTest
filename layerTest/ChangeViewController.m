//
//  ChangeViewController.m
//  layerTest
//
//  Created by ios1 on 15/12/10.
//  Copyright © 2015年 zp. All rights reserved.
//

#import "ChangeViewController.h"
#import "Change1ViewController.h"


@interface ChangeViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (nonatomic,strong)CALayer *layer;

@end

@implementation ChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    CALayer *layer=[CALayer layer];
//    layer.fr
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeView:(id)sender {
    CATransition *transaction=[CATransition animation];
    transaction.duration=1;
    transaction.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    //私有API
    transaction.type=@"cube";
    transaction.subtype=kCATransitionFromRight;
    [self.view exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    [self.view.layer addAnimation:transaction forKey:@"11"];
    
}
- (IBAction)push:(id)sender {
    CATransition *transition=[CATransition animation];
    transition.duration=1;
    transition.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    transition.type=@"cube";
    transition.subtype=kCATransitionFromRight;
    [self.navigationController.view.layer addAnimation:transition forKey:@"111"];
    Change1ViewController *change1=[[Change1ViewController alloc]init];
    [self.navigationController showViewController:change1 sender:nil];
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
