
//
//  IAtopView.m
//  InterdimensionalAdventure
//
//  Created by neuedu on 15/9/16.
//  Copyright (c) 2015年 yy. All rights reserved.
//

#import "IAtopView.h"
#import "UIView+Extension.h"
@implementation IAtopView

+(instancetype)IAtopView
{
    IAtopView*view=[[[NSBundle mainBundle]loadNibNamed:@"IAtopView" owner:nil options:nil]lastObject];
    return view;
}


-(void)layoutSubviews
{
    [super layoutSubviews];
//    @property (weak, nonatomic) IBOutlet UIButton *Figure;
    _Figure.frame=CGRectMake(0, 0, 90.f/375.f*self.frame.size.width, self.frame.size.height);
       NSLog(@"%f",self.frame.size.height);
    NSLog(@"%f",self.frame.size.width);
//    @property (weak, nonatomic) IBOutlet UIImageView *power;
    _power.frame=CGRectMake(_Figure.right, 0, 27.f/375.f*self.frame.size.width,22.f/120.f*_Figure.height);
//    @property (weak, nonatomic) IBOutlet UILabel *powerLable;
    _powerLable.frame=CGRectMake(_power.right, 0, _power.width, _power.height);
//    @property (weak, nonatomic) IBOutlet UIImageView *wisdom;
    _wisdom.frame=CGRectMake(_powerLable.right, 0, _power.width, _power.height);
//    @property (weak, nonatomic) IBOutlet UILabel *wisdomLable;
    _wisdomLable.frame=CGRectMake(_wisdom.right, 0, _power.width, _power.height);
//    @property (weak, nonatomic) IBOutlet UIImageView *Skill;
    _Skill.frame=CGRectMake(_wisdomLable.right, 0, _power.width, _power.height);
//    @property (weak, nonatomic) IBOutlet UILabel *SkillLable;
    _SkillLable.frame=CGRectMake(_Skill.right, 0, _power.width, _power.height);
//    @property (weak, nonatomic) IBOutlet UIImageView *corporeity;
    _corporeity.frame=CGRectMake(_SkillLable.right, 0, _power.width, _power.height);
//    @property (weak, nonatomic) IBOutlet UILabel *corporeityLable;
    _corporeityLable.frame=CGRectMake(_corporeity.right, 0, _power.width, _power.height);
//    @property (weak, nonatomic) IBOutlet UIImageView *gold;
    _gold.frame=CGRectMake(_corporeityLable.right, 0, _power.width, _Figure.height/4);
//    @property (weak, nonatomic) IBOutlet UILabel *goldLable;
    _goldLable.frame=CGRectMake(_gold.right, 0, self.frame.size.width-_gold.right,_Figure.height/4);
//    @property (weak, nonatomic) IBOutlet UIImageView *Attack;
    _Attack.frame=CGRectMake(_Figure.right, _power.bottom+8.f/120.f*self.frame.size.height, _power.width, _power.height);
//    @property (weak, nonatomic) IBOutlet UILabel *AttackLable;
    _AttackLable.frame=CGRectMake(_Attack.right, _Attack.top, _power.width, _power.height);
//    @property (weak, nonatomic) IBOutlet UIImageView *mana;
    _mana.frame=CGRectMake(_AttackLable.right, _Attack.top, _power.width, _power.height);
//    @property (weak, nonatomic) IBOutlet UILabel *manaLable;
    _manaLable.frame=CGRectMake(_mana.right, _Attack.top, _power.width, _power.height);
//    @property (weak, nonatomic) IBOutlet UIImageView *Hitrate;
    _Hitrate.frame=CGRectMake(_manaLable.right, _Attack.top, _power.width, _power.height);
//    @property (weak, nonatomic) IBOutlet UILabel *HitrateLable;
    _HitrateLable.frame=CGRectMake(_Hitrate.right, _Attack.top, _power.width, _power.height);
//    @property (weak, nonatomic) IBOutlet UIImageView *resistance;
    _resistance.frame=CGRectMake(_HitrateLable.right, _Attack.top, _power.width, _power.height);
//    @property (weak, nonatomic) IBOutlet UILabel *resistanceLable;
    _resistanceLable.frame=CGRectMake(_resistance.right, _Attack.top, _power.width, _power.height);
//    @property (weak, nonatomic) IBOutlet UIButton *accouter;
    _accouter.frame=CGRectMake(_Figure.right, _Attack.bottom+8.f/120.f*self.frame.size.height, _power.width*2, self.frame.size.height-_Attack.bottom-8.f/120.f*self.frame.size.height);
//    @property (weak, nonatomic) IBOutlet UILabel *lv;
    _lv.frame=CGRectMake(_accouter.right, _accouter.top, _accouter.width, _accouter.height/2);
//    @property (weak, nonatomic) IBOutlet UILabel *Experience;
    _Experience.frame=CGRectMake(_accouter.right, _lv.bottom, _accouter.width, _accouter.height/2);
//    @property (weak, nonatomic) IBOutlet UIButton *god;
    _god.frame=CGRectMake(_lv.right, _accouter.top, _accouter.width, _accouter.height);
//    @property (weak, nonatomic) IBOutlet UILabel *Checkpoint;
    _Checkpoint.frame=CGRectMake(_gold.left, _gold.bottom, _gold.width+_goldLable.width, _gold.height);
//    @property (weak, nonatomic) IBOutlet UIButton *Flee;
    _Flee.frame=CGRectMake(_gold.left, _Checkpoint.bottom, _gold.width+_goldLable.width, _gold.height);
//    @property (weak, nonatomic) IBOutlet UIButton *Setup;
     _Setup.frame=CGRectMake(_gold.left, _Flee.bottom, _gold.width+_goldLable.width, _gold.height);
    
    
    
}
@end
