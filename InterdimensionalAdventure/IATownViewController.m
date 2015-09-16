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
#import "UIView+Extension.h"
@interface IATownViewController ()

@end

@implementation IATownViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //添加自控件
    
//    @property (weak, nonatomic) IBOutlet UIButton *bar;
//    @property (weak, nonatomic) IBOutlet UIButton *Training;
//    @property (weak, nonatomic) IBOutlet UIButton *challenge;
//    @property (weak, nonatomic) IBOutlet UIButton *shop;
//    @property (weak, nonatomic) IBOutlet UIButton *enter;
    
    _enter.frame=CGRectMake(
                            [UIScreen mainScreen].bounds.size.width*0.5-60.f/375.f*[UIScreen mainScreen].bounds.size.width*0.5,
                            [UIScreen mainScreen].bounds.size.height*0.5-60.f/375.f*[UIScreen mainScreen].bounds.size.width*0.5,
                            60.f/375.f*[UIScreen mainScreen].bounds.size.width,
                            60.f/375.f*[UIScreen mainScreen].bounds.size.width
                            );
    
    _bar.frame=CGRectMake(
                          _enter.left-17.f/375.f*[UIScreen mainScreen].bounds.size.width-100.f/375.f*[UIScreen mainScreen].bounds.size.width,
                          _enter.top-54.f/667.f*[UIScreen mainScreen].bounds.size.height-100.f/375.f*[UIScreen mainScreen].bounds.size.width,
                          100.f/375.f*[UIScreen mainScreen].bounds.size.width,
                          100.f/375.f*[UIScreen mainScreen].bounds.size.width
                          );
    _Training.frame=CGRectMake(_bar.right+90.f/375.f*[UIScreen mainScreen].bounds.size.width, _bar.top, _bar.width, _bar.height);
    
    _challenge.frame=CGRectMake(_bar.left, _enter.bottom+54.f/667.f*[UIScreen mainScreen].bounds.size.height, _bar.width, _bar.height);
    _shop.frame=CGRectMake(_Training.left, _challenge.top, _bar.width, _bar.height);

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
    topview.frame=CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 100/667.f*[UIScreen mainScreen].bounds.size.height);
    
    [self.view addSubview:topview];
    [self.view layoutIfNeeded];
}
-(void)addbottomview
{
    IAbottomView*bottomview=[IAbottomView IAbottomView];
        bottomview.frame=CGRectMake(0, [UIScreen mainScreen].bounds.size.height-80.f/667.f*[UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width, 80.f/667.f*[UIScreen mainScreen].bounds.size.height);
    [self.view addSubview:bottomview];
    [self.view layoutIfNeeded];
   
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
