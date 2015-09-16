
//
//  IAtopView.m
//  InterdimensionalAdventure
//
//  Created by neuedu on 15/9/16.
//  Copyright (c) 2015年 yy. All rights reserved.
//

#import "IAtopView.h"

@implementation IAtopView

+(instancetype)IAtopView
{
    IAtopView*view=[[[NSBundle mainBundle]loadNibNamed:@"IAtopView" owner:nil options:nil]lastObject];
    return view;
}

@end
