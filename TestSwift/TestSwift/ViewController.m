//
//  ViewController.m
//  TestSwift
//
//  Created by NiLaisong on 2017/7/6.
//  Copyright © 2017年 NiLaisong. All rights reserved.
//

#import "ViewController.h"
//oc调用swift代码时需用到的头文件（xcode自动生成且隐藏看不到）
#import "TestSwift-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    SweetAlert* alert = [[SweetAlert alloc] init];
//    alert = [alert showAlert:@"hello"];
    
//    GIFImageView * gif = [[GIFImageView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
//    gif.animationImages = @[[UIImage imageNamed:@"logo_big.png"],[UIImage imageNamed:@"SweetAlert.png"]];
//    [self.view addSubview:gif];
//    [gif startAnimating];
    
    Test * test  = [[Test alloc] init];
//    [test testStringWithFirstName:@"" lastName:@""];
//    [test testArrayWithInitArray:nil];
//    [test testDictionaryWithKey:@"":0];
//    [test testTailClosure];
//    [test testEnum];
//    [test testStruct];
    [test testClass];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
