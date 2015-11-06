//
//  main.m
//  GTMBase64Demo
//
//  Created by isaced on 13-7-15.
//  Copyright (c) 2013Y isaced. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GTMBase64.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        NSString *str = @"hello Base64!";
        NSData *data= [str dataUsingEncoding:NSUTF8StringEncoding];
        
        // Encode
        data = [GTMBase64 encodeData:data];
        
        // Decode
        data = [GTMBase64 decodeData:data];
        
        NSString *retStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@",retStr);
    }
    return 0;
}

