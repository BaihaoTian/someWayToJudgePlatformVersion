//
//  ViewController.m
//  someWayToJudgePlatformVersion
//
//  Created by Bc.whi1te_Lei on 2016/10/9.
//  Copyright © 2016年 Bc.whi1te_Lei. All rights reserved.
//

#import "ViewController.h"

#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)


@interface ViewController ()
    
    @end

@implementation ViewController
    
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    /***
     This project is list some Way to juedge app version
     ***/
    
    //Way 1
    if ([[UIDevice currentDevice].systemVersion floatValue] < 10.0) {
        NSLog(@"[[UIDevice currentDevice].systemVersion floatValue]  is useful");
    }
    
    //Way 2
    /*
     ***props must be a string***
     
     SYSTEM_VERSION_EQUAL_TO
     SYSTEM_VERSION_GREATER_THAN
     SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO
     SYSTEM_VERSION_LESS_THAN
     SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO
     */
    
    
    if (SYSTEM_VERSION_LESS_THAN(@"10.0")) {
        NSLog(@"define Macro is useful");
    }
    
    //Way 3
    /*
     #define NSFoundationVersionNumber_iPhoneOS_2_0	678.24
     #define NSFoundationVersionNumber_iPhoneOS_2_1  678.26
     #define NSFoundationVersionNumber_iPhoneOS_2_2  678.29
     #define NSFoundationVersionNumber_iPhoneOS_3_0  678.47
     #define NSFoundationVersionNumber_iPhoneOS_3_1  678.51
     #define NSFoundationVersionNumber_iPhoneOS_3_2  678.60
     #define NSFoundationVersionNumber_iOS_4_0  751.32
     #define NSFoundationVersionNumber_iOS_4_1  751.37
     #define NSFoundationVersionNumber_iOS_4_2  751.49
     #define NSFoundationVersionNumber_iOS_4_3  751.49
     #define NSFoundationVersionNumber_iOS_5_0  881.00
     #define NSFoundationVersionNumber_iOS_5_1  890.10
     #define NSFoundationVersionNumber_iOS_6_0  992.00
     #define NSFoundationVersionNumber_iOS_6_1  993.00
     #define NSFoundationVersionNumber_iOS_7_0 1047.20
     #define NSFoundationVersionNumber_iOS_7_1 1047.25
     #define NSFoundationVersionNumber_iOS_8_0 1140.11
     #define NSFoundationVersionNumber_iOS_8_1 1141.1
     #define NSFoundationVersionNumber_iOS_8_2 1142.14
     #define NSFoundationVersionNumber_iOS_8_3 1144.17
     #define NSFoundationVersionNumber_iOS_8_4 1144.17
     #define NSFoundationVersionNumber_iOS_8_x_Max 1199
     #define NSFoundationVersionNumber_iOS_9_0 1240.1
     #define NSFoundationVersionNumber_iOS_9_1 1241.14
     #define NSFoundationVersionNumber_iOS_9_2 1242.12
     #define NSFoundationVersionNumber_iOS_9_3 1242.12
     #define NSFoundationVersionNumber_iOS_9_4 1280.25
     #define NSFoundationVersionNumber_iOS_9_x_Max 1299
     */
    
    if (NSFoundationVersionNumber < NSFoundationVersionNumber_iOS_9_x_Max){
        NSLog(@"NSFoundationVersionNumber is useful");
    }
    //Way 4
    if ([NSProcessInfo.processInfo isOperatingSystemAtLeastVersion:(NSOperatingSystemVersion){9,3,0}]) {
        NSLog(@"isOperatingSystemAtLeastVersion is useful");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
