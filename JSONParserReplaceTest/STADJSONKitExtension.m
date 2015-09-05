//
//  STADJSONKitExtension.m
//  STAD
//
//  Created by pioneer on 15/9/5.
//  Copyright © 2015年 jinkai. All rights reserved.
//

#import "STADJSONKitExtension.h"

@implementation NSString (STADJSONKitExtension)

- (id)stadobjectFromJSONString
{
    NSError *error =nil;
    NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
    id parsedObj = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:&error];
    return parsedObj;
}

- (id)stadmutableObjectFromJSONString
{
    NSError *error =nil;
    NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
    id parsedObj = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
    return parsedObj;
}

- (NSData *)stadJSONData
{
    NSError *error =nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:kNilOptions error:&error];
    
    if (jsonData == nil || error!=nil) {
        return nil;
    }
    return jsonData;
}

- (NSString *)stadJSONString
{
    NSError *error =nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:kNilOptions error:&error];
    
    if (jsonData == nil || error!=nil) {
        return nil;
    }
    
    NSString *jsonStr = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
    
    return jsonStr;
}

@end

@implementation NSData (STADJSONKitExtension)
// The NSData MUST be UTF8 encoded JSON.
- (id)stadobjectFromJSONData
{
    NSError *error = nil;
    id data = [NSJSONSerialization JSONObjectWithData:self options:kNilOptions error:&error];
    
    if (data == nil || error != nil) {
        return  nil;
    }
    return data;
}

- (id)stadmutableObjectFromJSONData
{
    NSError *error = nil;
    id data = [NSJSONSerialization JSONObjectWithData:self options:NSJSONReadingMutableContainers error:&error];
    
    if (data == nil || error != nil) {
        return  nil;
    }
    return data;
}

@end

@implementation NSArray (STADJSONKitExtension)
- (NSData *)stadJSONData
{
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:kNilOptions error:&error];
    
    if (jsonData == nil || error!=nil) {
        return nil;
    }
    return jsonData;
}

- (NSString *)stadJSONString
{
    NSError *error =nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:kNilOptions error:&error];
    
    if (jsonData == nil || error!=nil) {
        return nil;
    }
    
    NSString *jsonStr = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
    
    return jsonStr;
}
@end


@implementation NSDictionary (STADJSONKitExtension)

- (NSData *)stadJSONData
{
    NSError *error =nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:kNilOptions error:&error];
    
    if (jsonData == nil || error!=nil) {
        return nil;
    }
    return jsonData;
}

- (NSString *)stadJSONString
{
    NSError *error =nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:kNilOptions error:&error];
    
    if (jsonData == nil || error!=nil) {
        return nil;
    }
    
    NSString *jsonStr = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
    
    return jsonStr;
}

@end