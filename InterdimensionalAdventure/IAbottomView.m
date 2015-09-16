//
//  IAbottomView.m
//  InterdimensionalAdventure
//
//  Created by neuedu on 15/9/16.
//  Copyright (c) 2015年 yy. All rights reserved.
//

#import "IAbottomView.h"
#import "UIView+Extension.h"
@implementation IAbottomView

+(instancetype)IAbottomView
{
    IAbottomView*view=[[[NSBundle mainBundle]loadNibNamed:@"IAbottomView" owner:nil options:nil]lastObject];
    
//    @property (weak, nonatomic) IBOutlet UIButton *MonsterProperty;
//    @property (weak, nonatomic) IBOutlet UIImageView *hp;
//    @property (weak, nonatomic) IBOutlet UILabel *hpLable;
//    @property (weak, nonatomic) IBOutlet UIImageView *mp;
//    @property (weak, nonatomic) IBOutlet UILabel *mpLable;
//    @property (weak, nonatomic) IBOutlet UIImageView *shield;
//    @property (weak, nonatomic) IBOutlet UILabel *shieldLable;
//    @property (weak, nonatomic) IBOutlet UIImageView *skil;
//    @property (weak, nonatomic) IBOutlet UIButton *skil1;
//    @property (weak, nonatomic) IBOutlet UIButton *skil2;
//    @property (weak, nonatomic) IBOutlet UIButton *skil3;
//    @property (weak, nonatomic) IBOutlet UIImageView *Prop;
//    @property (weak, nonatomic) IBOutlet UIButton *Prop1;
//    @property (weak, nonatomic) IBOutlet UIButton *Prop2;
//    @property (weak, nonatomic) IBOutlet UIButton *Prop3;
    
  
    
    
    return view;
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    _MonsterProperty.frame=CGRectMake(0, 0, 60.f/375.f*self.frame.size.width, self.frame.size.height);
    _hp.frame = CGRectMake(_MonsterProperty.right, 0, 40.f/375.f*self.frame.size.width, 0.5*_MonsterProperty.height);
    _hpLable.frame = CGRectMake(_hp.right, 0, 50.f/375.f*self.frame.size.width, _hp.height);
    _mp.frame = CGRectMake(_MonsterProperty.right, _hp.bottom, 40.f/375.f*self.frame.size.width, _hp.height);
    _mpLable.frame = CGRectMake(_mp.right, _hpLable.bottom, 50.f/375.f*self.frame.size.width, _hp.height);
    _shield.frame = CGRectMake(_hpLable.right, 0, 40.f/375.f*self.frame.size.width, _hp.height);
    _shieldLable.frame = CGRectMake(_hpLable.right, 0, 40.f/375.f*self.frame.size.width, _hp.height);
    _skil.frame = CGRectMake(_shieldLable.right, 0, 40.f/375.f*self.frame.size.width, _hp.height);
    _skil1.frame = CGRectMake(_skil.right, 0, 40.f/375.f*self.frame.size.width, _hp.height);
    _skil2.frame = CGRectMake(_skil1.right+((self.frame.size.width-_skil.right)-(3*_hp.height))/3, 0, 40.f/375.f*self.frame.size.width, _hp.height);
    _skil3.frame = CGRectMake(_skil2.right+((self.frame.size.width-_skil.right)-(3*_hp.height))/3, 0, 40.f/375.f*self.frame.size.width, _hp.height);
    _Prop.frame = CGRectMake(_skil.left, _hp.bottom, 40.f/375.f*self.frame.size.width, _hp.height);
    _Prop1.frame = CGRectMake(_skil1.left, _hp.bottom, 40.f/375.f*self.frame.size.width, _hp.height);
    _Prop2.frame = CGRectMake(_skil2.left, _hp.bottom, 40.f/375.f*self.frame.size.width, _hp.height);
    _Prop3.frame = CGRectMake(_skil3.left, _hp.bottom, 40.f/375.f*self.frame.size.width, _hp.height);

}


@end
