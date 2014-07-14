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
#import "FaceBookNetwork.h"
#import "Twitter.h"

#import "Message.h"
#import "SocialPost.h"


int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        NSLog(@"------------------------------------------------");
        WhatsAppNetwork *whatsApp = [[WhatsAppNetwork alloc] init];
        whatsApp.userName = @"Anshuman Dahale";
        whatsApp.userPassword = @"123456";
        [whatsApp login];
        whatsApp.showLastSeen = YES;
        
        NSLog(@"------------------------------------------------");
        FaceBookNetwork *fb = [[FaceBookNetwork alloc] init];
        fb.userName = @"anshumandahale";
        fb.userPassword = @"123456";
        [fb login];
        
        SocialPost *post = [[SocialPost alloc] init];
        post.post = @"Hi there I am here";
        post.sharedWith = @[@"Chetan", @"Satya", @"Amar"];
        [fb shareThisPostPubilc:post];
        
        NSLog(@"------------------------------------------------");
        
        
        Twitter *twitter = [[Twitter alloc] init];
        twitter.userName = @"anshumandahale";
        twitter.userPassword = @"123456";
        [twitter login];
        
        SocialPost *tweet = [[SocialPost alloc] init];
        tweet.post = @"Hi there I am on Twitter";
        tweet.sharedWith = @[@"Bobby", @"Anna", @"Vipul"];
        [twitter sharePost:tweet];
        
    }
    return 0;
}
