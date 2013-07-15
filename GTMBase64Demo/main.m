//
//  main.m
//  GTMBase64Demo
//
//  Created by isaced on 13-7-15.
//  Copyright (c) 2013年 isaced. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GTMBase64.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        NSString *str = @"hello Base64!";
        NSData *data= [str dataUsingEncoding:NSUTF8StringEncoding];
        
        if([data length]>0){
            data = [GTMBase64 encodeData:data];//编码
        }
        
//        if([data length]>0){
//            data = [GTMBase64 decodeData:data];//解码
//        }
        
        NSString *retStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@",retStr);
    }
    return 0;
}

