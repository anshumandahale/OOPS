//
//  MessagingNetworkBase.m
//  OOPS
//
//  Created by Anshuman Dahale on 12/07/14.
//  Copyright (c) 2014 Anshuman Dahale. All rights reserved.
//

#import "MessagingNetworkBase.h"
#import "Message.h"

@implementation MessagingNetworkBase


- (void) sendMessage:(Message *)message {
    
    NSLog(@"Send: %@\nTo: %@", message.message, message.to);
}

- (void) getMessages:(NSArray *)messages {
    
    for(Message *message in messages) {
        
        NSLog(@"Message From: %@, To: %@", message.from, message.to);
        NSLog(@"Message Body: %@",message.message);
    }
}

@end
