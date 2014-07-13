//
//  MessagingNetworkBase.h
//  OOPS
//
//  Created by Anshuman Dahale on 12/07/14.
//  Copyright (c) 2014 Anshuman Dahale. All rights reserved.
//

#import "SocialNetworkBase.h"
@class Message;

@interface MessagingNetworkBase : SocialNetworkBase

- (void) sendMessage:(Message *)message;
- (void) getMessages:(NSArray *)messages;

@end
