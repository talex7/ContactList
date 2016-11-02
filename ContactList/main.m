//
//  main.m
//  ContactList
//
//  Created by Thomas Alexanian on 2016-11-01.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h" 
#import "ContactList.h" 
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    
    while (YES) {
        
        NSString *quit = @"quit";
        InputCollector *inputCollector = [[InputCollector alloc]init];
        
        NSString *menuInput = [inputCollector inputForPrompt:@"What would you like do next?\n new - Create a new contact\n list - List all contacts\n quit - Exit Application\n"];
        
        if ([menuInput isEqualToString:quit]) {
            
            break;
            
        }
    }
    return 0;
}
