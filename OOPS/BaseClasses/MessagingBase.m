//
//  MessagingNetworkBase.m
//  OOPS
//
//  Created by Anshuman Dahale on 12/07/14.
//  Copyright (c) 2014 Anshuman Dahale. All rights reserved.
//

#import "MessagingBase.h"
#import "Message.h"

@implementation MessagingBase

- (void) sendMessage:(Message *)message {
    
    message.from = self.userName;
    NSLog(@"Send: %@\nTo: %@", message.message, message.to);
}



@end
