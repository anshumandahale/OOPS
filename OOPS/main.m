//
//  main.m
//  OOPS
//
//  Created by Anshuman Dahale on 12/07/14.
//  Copyright (c) 2014 Anshuman Dahale. All rights reserved.
//

#import <Foundation/Foundation.h>

// Social Networks
#import "WhatsApp.h"
#import "FaceBook.h"
#import "Twitter.h"

#import "Message.h"


int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        // whats app
        NSLog(@"------------------------------------------------");
        WhatsApp *whatsApp = [[WhatsApp alloc] init];
        whatsApp.userName = @"Anshuman Dahale";
        whatsApp.userPassword = @"123456";
        [whatsApp login];
        whatsApp.showLastSeen = YES;
        
        Message *message = [[Message alloc] init];
        message.message = @"Hi there i am on WhatsApp";
        message.to = @"Sunny";
        [whatsApp sendMessage:message];
        
        
        // facebook
        NSLog(@"------------------------------------------------");
        FaceBook *fb = [[FaceBook alloc] init];
        fb.userName = @"anshumandahale";
        fb.userPassword = @"123456";
        [fb login];
        [fb sharePost:@"Hello frineds connect with me on Facebook" withFriends:@[@"Chetan", @"Amar", @"Satya"]];
        
        
        // twitter
        NSLog(@"------------------------------------------------");
        Twitter *twitter = [[Twitter alloc] init];
        twitter.userName = @"anshumandahale";
        twitter.userPassword = @"123456";
        [twitter login];
        [twitter createPost:@"Hi friends, follow me on twitter" forUsers:@[@"Abhi", @"Raj", @"Vipul"]];
        [twitter sharePost];
    }
    return 0;
}
