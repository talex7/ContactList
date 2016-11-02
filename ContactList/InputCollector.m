//
//  InputCollector.m
//  ContactList
//
//  Created by Thomas Alexanian on 2016-11-01.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    
    char *input[255];
    
    NSLog(@"%@", promptString);
    
    fgets(input, 256, stdin);
    NSString *result = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
    
    return result;
}

@end
