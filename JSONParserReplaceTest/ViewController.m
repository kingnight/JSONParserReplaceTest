//
//  ViewController.m
//  JSONParserReplaceTest
//
//  Created by pioneer on 15/9/5.
//  Copyright (c) 2015年 pioneer. All rights reserved.
//

#import "ViewController.h"
#import "STADJSONKit.h"
//#import "STADJSONKitExtension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *physicsValues = @[
  @{@"Physics Constants": @"111", @"Mathematics": @"222",@"Fun Numbers": @"333"},
  @{@"Physics Constants": @"111", @"Mathematics": @"222",@"Fun Numbers": @"333"},
  @{@"Physics Constants": @"234"}];
    
    NSString *test1 = [physicsValues stadJSONString];
    NSLog(@"test1=%@",test1);
    
   NSMutableArray *test2 = [test1 stadmutableObjectFromJSONString];
   NSLog(@"test2=%@",test2);
    
   NSArray *test3 = [test1 stadobjectFromJSONString];
   NSLog(@"test3=%@",test3);
    
    NSString *testValue = @"[{\"Mathematics\":\"222\",\"Physics Constants\":\"111\",\"Fun Numbers\":\"333\"},{\"Mathematics\":\"222\",\"Physics Constants\":\"111\",\"Fun Numbers\":\"333\"},{\"Physics Constants\":\"234\"}]";
    
   NSString *test4 = [testValue stadJSONString];
   NSLog(@"test4=%@",test4);
    
    
    NSDictionary *testDict = @{@"Physics Constants": @{@"Mathematics": @"222"}};
    NSString *test5 = [testDict stadJSONString];
    NSLog(@"test5=%@",test5);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
