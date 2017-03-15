//
//  ViewController.m
//  testBaiduPush
//
//  Created by Stone袁 on 2017/3/14.
//  Copyright © 2017年 Stone. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
//    NSString *urlStr = [dic objectForKey:@"url"];
    
    UIWebView * webview = [[UIWebView alloc] initWithFrame:CGRectMake(0,0,self.view.bounds.size.width,self.view.bounds.size.height)];
    
    
    [self.view addSubview:webview];
    
    NSURLRequest * request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.hao123.com"]];
    
    
    
    //运行一下，百度页面就出来了
    
    
    
    [webview loadRequest:request];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
