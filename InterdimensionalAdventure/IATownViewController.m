//
//  IATownViewController.m
//  InterdimensionalAdventure
//
//  Created by neuedu on 15/9/16.
//  Copyright (c) 2015年 yy. All rights reserved.
//

#import "IATownViewController.h"
#import "IAbottomView.h"
#import "IAtopView.h"

@interface IATownViewController ()

@end

@implementation IATownViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //添加自控件
    [self addtopview];
    [self addbottomview];
}
-(BOOL)prefersStatusBarHidden
{
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)addtopview
{
    IAtopView*topview=[IAtopView IAtopView];
        [self.view addSubview:topview];
    topview.frame=CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 120.f/667.f*[UIScreen mainScreen].bounds.size.height);

}
-(void)addbottomview
{
    IAbottomView*bottomview=[IAbottomView IAbottomView];
     [self.view addSubview:bottomview];
    bottomview.frame=CGRectMake(0, [UIScreen mainScreen].bounds.size.height-80.f/667.f*[UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width, 80.f/667.f*[UIScreen mainScreen].bounds.size.height);
   
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
