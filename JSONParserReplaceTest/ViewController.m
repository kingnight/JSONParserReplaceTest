//
//  ViewController.m
//  JSONParserReplaceTest
//
//  Created by pioneer on 15/9/5.
//  Copyright (c) 2015年 pioneer. All rights reserved.
//

#import "ViewController.h"
//#import "STADJSONKit.h"
#import "STADJSONKitExtension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *physicsValues = @[
  @{@"Physics Constants": @"111", @"Mathematics": @"222",@"Fun Numbers": @"333"},
  @{@"Physics Constants": @"111", @"Mathematics": @"222",@"Fun Numbers": @"333"},
  @{@"Physics Constants": @"111", @"Mathematics": @"222",@"Fun Numbers": @"333"}];
    
    NSString *test1 = [physicsValues stadJSONString];
    NSLog(@"test1=%@",test1);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
