//
//  ViewController.m
//  归档
//
//  Created by Stone袁 on 2017/1/13.
//  Copyright © 2017年 Stone. All rights reserved.
//

#import "ViewController.h"
#import "YuansPerson.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/**
 存   数据

 */
- (IBAction)cunBtn:(id)sender {
    
    NSString *path = NSHomeDirectory();
    //    NSLog(@"%@",path);
    path = [path stringByAppendingString:@"Yuans.plist"];

//    NSMutableData *data = [[NSMutableData alloc]init];
//    NSKeyedArchiver *archvier = [[NSKeyedArchiver alloc]initForWritingWithMutableData:data];
    
    YuansPerson *yuansPerson = [YuansPerson new];
    
    yuansPerson.name = @"yuans";
    yuansPerson.age = @"18";
    
    yuansPerson.grade = @"100";
    NSMutableData *data = [[NSMutableData alloc] init];
    NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
    
    //写入文件
    [data writeToFile:yuansPerson atomically:YES];
    
}


/**
 取  数据

 */
- (IBAction)quBtn:(id)sender {
    
    YuansPerson *yuansPerson = [YuansPerson new];
    unsigned int count = 0;
    Ivar *nameList = class_copyIvarList([YuansPerson class], &count);
    
    for (int i = 0;i < count; i ++) {
        
        Ivar var = nameList[i];
        const char *name = ivar_getName(var) ;
        const char *type = ivar_getTypeEncoding(var);
        Ivar y_name = nameList[1];
        object_setIvar(yuansPerson, y_name, @"sex");
        NSLog(@"name = %s type = %s",name,type);
    }
    NSLog(@"修改后  %@",[yuansPerson description]);
    
}
@end
