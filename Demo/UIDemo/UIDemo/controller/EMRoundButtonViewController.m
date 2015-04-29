//
//  EMRoundButtonViewController.m
//  UI
//
//  Created by Samuel on 15/4/10.
//  Copyright (c) 2015年 Samuel. All rights reserved.
//

#import "EMRoundButtonViewController.h"
#import "EMRoundButton.h"

@interface EMRoundButtonViewController ()

@end

@implementation EMRoundButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    EMRoundButton *btn1 = [EMRoundButton roundButtonWithFrame:CGRectMake(20, 10, 120, 40)
                                                      corners:UIRectCornerTopLeft
                                                 cornerRadius:14
                                             normalStateColor:[UIColor redColor]
                                          highLightStateColor:[UIColor colorWithRed:210/255.0 green:51/255.0 blue:51/255.0 alpha:1]];
    [btn1 setTitle:@"左上圆角" forState:UIControlStateNormal];
    [self.view addSubview:btn1];
    
    
    EMRoundButton *btn2 = [EMRoundButton roundButtonWithFrame:CGRectMake(170, 10, 120, 40)
                                                      corners:UIRectCornerTopRight
                                                   cornerRadius:14
                                               normalStateColor:[UIColor greenColor]
                                            highLightStateColor:[UIColor colorWithRed:51/255.0 green:210/255.0 blue:51/255.0 alpha:1]];
    [btn2 setTitle:@"右上圆角" forState:UIControlStateNormal];
    [self.view addSubview:btn2];
    
    
    EMRoundButton *btn3 = [EMRoundButton roundButtonWithFrame:CGRectMake(20, 70, 120, 40)
                                                      corners:UIRectCornerBottomLeft
                                                   cornerRadius:14
                                               normalStateColor:[UIColor blueColor]
                                            highLightStateColor:[UIColor colorWithRed:51/255.0 green:51/255.0 blue:210/255.0 alpha:1]];
    [btn3 setTitle:@"左下圆角" forState:UIControlStateNormal];
    [self.view addSubview:btn3];
    
    
    EMRoundButton *btn4 = [EMRoundButton roundButtonWithFrame:CGRectMake(170, 70, 120, 40)
                                                      corners:UIRectCornerBottomRight
                                                 cornerRadius:14
                                             normalStateColor:[UIColor cyanColor]
                                          highLightStateColor:[UIColor colorWithRed:51/255.0 green:210/255.0 blue:210/255.0 alpha:1]];
    [btn4 setTitle:@"右下圆角" forState:UIControlStateNormal];
    [self.view addSubview:btn4];
    

    EMRoundButton *btn5 = [EMRoundButton roundButtonWithFrame:CGRectMake(20, 130, 120, 40)
                                                      corners:UIRectCornerAllCorners
                                                   cornerRadius:4
                                               normalStateColor:[UIColor magentaColor]
                                            highLightStateColor:[UIColor colorWithRed:210/255.0 green:48/255.0 blue:210/255.0 alpha:1]];
    [btn5 setTitle:@"全圆角" forState:UIControlStateNormal];
    [self.view addSubview:btn5];
    
    
    EMRoundButton *btn6 = [EMRoundButton roundButtonWithFrame:CGRectMake(20, 200, 120, 40)
                                                      corners:UIRectCornerTopLeft | UIRectCornerBottomLeft
                                                   cornerRadius:14
                                               normalStateColor:[UIColor yellowColor]
                                            highLightStateColor:[UIColor colorWithRed:210/255.0 green:218/255.0 blue:48/255.0 alpha:1]];
    [btn6 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [btn6 setTitle:@"左圆角" forState:UIControlStateNormal];
    [self.view addSubview:btn6];
    
    
    EMRoundButton *btn7 = [EMRoundButton roundButtonWithFrame:CGRectMake(170, 200, 120, 40)
                                                      corners:UIRectCornerTopRight | UIRectCornerBottomRight
                                                   cornerRadius:14
                                               normalStateColor:[UIColor yellowColor]
                                            highLightStateColor:[UIColor colorWithRed:210/255.0 green:218/255.0 blue:48/255.0 alpha:1]];
    [btn7 setTitle:@"右圆角" forState:UIControlStateNormal];
    [btn7 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    btn7.tag = 7;
    [self.view addSubview:btn7];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    // 换个位置看看
    for (UIView *v in self.view.subviews) {
        if (v.tag == 7) {
            UIView *btn7 = v;
            btn7.frame = CGRectMake(170, 200, 60, 40);
            [btn7 setNeedsDisplay];
        }
    }
}


@end




