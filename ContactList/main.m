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
    
    ContactList *newList = [[ContactList alloc]init];
    
    while (YES) {
        
        NSString *quit = @"quit";
        NSString *new = @"new";
        NSString *list = @"list";
        NSString *show = @"show";
        InputCollector *inputCollector = [[InputCollector alloc]init];
        
        NSString *menuInput = [inputCollector inputForPrompt:@"What would you like do next?\n new - Create a new contact\n list - List all contacts\n show - Show information of a particular contact\n quit - Exit Application\n"];
        
        if ([menuInput isEqualToString:quit]) {
            
            break;
            
        } else if ([menuInput isEqualToString:new]) {
            
            Contact *createdContact = [[Contact alloc]init];
            
            NSString *nameInput = [inputCollector inputForPrompt:@"Please enter the contact's full name:\n"];
            NSString *emailInput = [inputCollector inputForPrompt:@"Please enter the contact's e-mail address:\n"];
            
            createdContact.name = nameInput;
            createdContact.email = emailInput;
            
            [newList addContact:createdContact];
            
        }   else if ([menuInput isEqualToString:list]) {
            
            NSInteger contactNo = 00;
            
            for (Contact* contact in newList.list) {
                
                contactNo += 1;
                NSLog(@"#%02ld: <%@> (%@)\n", contactNo, contact.name, contact.email);
                
            }
            
            
        } else if ([menuInput isEqualToString:show]) {
            
            int showID = [[inputCollector inputForPrompt:@"Please enter the contact's ID no.:\n"]intValue];
            
            Contact *c = newList.list[showID - 1];
            
            NSLog(@"Name: %@ \nE-mail Address: %@ \n", c.name, c.email);
            
        } else {
            
            NSLog(@"Please enter a valid response.");
            
        }
    }
    return 0;
}
