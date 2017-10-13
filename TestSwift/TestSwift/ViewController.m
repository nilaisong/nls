//
//  ViewController.m
//  TestSwift
//
//  Created by NiLaisong on 2017/7/6.
//  Copyright © 2017年 NiLaisong. All rights reserved.
//
#import "UIImageView+WebCache.h"

#import "ViewController.h"

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
    
        UIImageView* imgView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
    [imgView sd_setImageWithURL:[NSURL URLWithString:@"https://app.huijinmoshou.com/ios/1.jpg"]];
    [self.view addSubview:imgView];
    
    Test * test  = [[Test alloc] init];
//    [test testStringWithFirstName:@"" lastName:@""];
//    [test testArrayWithInitArray:nil];
//    [test testDictionaryWithKey:@"":0];
//    [test testTailClosure];
//    [test testEnum];
//    [test testStruct];
//    [test testClass];
//    [self add:1,2,3,4,5];
    


}
//可变参数处理
- (int)add:(int)item, ...
{
    
    va_list list; //1.定义一个指向可变参数列表的指针

    va_start(list, item); //2.得到一个可变参数的地址，第一个参数传入列表指针，第二个参数传入函数接收的第一个参数

    int result = 0;

    NSLog(@"第一个参数:%d", item);

    result += item;

    int arg; //3.声明一个中间值，用来接收遍历可变参数列表时，取出的参数

    while ((arg = va_arg(list, int)))
    { //4.得到列表中的下一个参数，第一个参数传入列表指针，第二个参数为此函数可变参数的类型。
        
        //循环的结束条件是arg不存在，即为nil
            
         NSLog(@"当前参数:%d" , arg);
            
        result+=arg;
        
    }
    va_end(list); //5.置空列表指针
    
    return result;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
