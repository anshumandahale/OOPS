//
//  main.m
//  OOPS
//
//  Created by Anshuman Dahale on 12/07/14.
//  Copyright (c) 2014 Anshuman Dahale. All rights reserved.
//

#import <Foundation/Foundation.h>

// My classes
#import "WhatsAppNetwork.h"
#import "Message.h"

#import "FaceBookNetwork.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        NSLog(@"------------------------------------------------");
        WhatsAppNetwork *whatsApp = [[WhatsAppNetwork alloc] init];
        whatsApp.socialNetworkName = @"WhatsApp";
        whatsApp.userName = @"Anshuman Dahale";
        whatsApp.userPassword = @"123456";
        [whatsApp login:whatsApp];
        whatsApp.showLastSeen = YES;
        
        NSLog(@"------------------------------------------------");
        FaceBookNetwork *fb = [[FaceBookNetwork alloc] init];
        fb.socialNetworkName = @"FaceBook";
        fb.userName = @"anshumandahale";
        fb.userPassword = @"123456";
        [fb login:fb];
        
        SocialPost *post = [[SocialPost alloc] init];
        post.post = @"Hi there I am here";
        post.sharedWith = @[@"Chetan", @"Satya", @"Amar"];
        
        [fb shareThisPostPubilc:post];
        
    }
    return 0;
}
