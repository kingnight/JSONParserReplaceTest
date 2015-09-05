//
//  STADJSONKitExtension.h
//  STAD
//
//  Created by pioneer on 15/9/5.
//  Copyright © 2015年 jinkai All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (STADJSONKitExtension)

- (id)stadobjectFromJSONString;
- (id)stadmutableObjectFromJSONString;

- (NSData *)stadJSONData;
- (NSString *)stadJSONString;
@end

@interface NSData (STADJSONKitExtension)
// The NSData MUST be UTF8 encoded JSON.
- (id)stadobjectFromJSONData;
- (id)stadmutableObjectFromJSONData;
@end

@interface NSArray (STADJSONKitExtension)
- (NSData *)stadJSONData;
- (NSString *)stadJSONString;   //NSArray to NSJSONSerialization
@end

@interface NSDictionary (STADJSONKitExtension)
- (NSData *)stadJSONData;
- (NSString *)stadJSONString;
@end