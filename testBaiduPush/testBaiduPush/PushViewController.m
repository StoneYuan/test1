//
//  PushViewController.m
//  testBaiduPush
//
//  Created by Stone袁 on 2017/3/14.
//  Copyright © 2017年 Stone. All rights reserved.
//

#import "PushViewController.h"

#import "BPush.h"

@interface PushViewController ()

@end

@implementation PushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *btn = [[UIButton alloc]init];
    btn.frame = CGRectMake(100, 200, 50, 30);
    btn.backgroundColor = [UIColor blueColor];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    NSDictionary *dic = _useInfo;
    if (dic) {
        
        NSString *urlStr = [dic objectForKey:@"url"];
        
         UIWebView * webview = [[UIWebView alloc] initWithFrame:CGRectMake(0,64,self.view.bounds.size.width,self.view.bounds.size.height)];
        
        
        [self.view addSubview:webview];
        
        NSURLRequest * request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlStr]];
        
        
        
        //运行一下，百度页面就出来了
        
        
        
        [webview loadRequest:request];
        
        
    }
    
    
}


- (void)btnAction:(UIButton *)btn{
    
    NSArray *arr = [BPush findLocalNotificationWithIdentifier:@"test"];
    
    [BPush listTagsWithCompleteHandler:^(id result, NSError *error) {
        
        NSLog(@"%@",result);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
