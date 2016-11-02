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
   
    InputCollector *menuInput = [[InputCollector alloc]init];
    
    [menuInput inputForPrompt:@"What would you like do next?\n new - Create a new contact\n list - List all contacts\n quit - Exit Application\n"];
    
    return 0;
}
