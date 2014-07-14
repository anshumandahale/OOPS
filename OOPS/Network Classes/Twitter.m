//
//  Twitter.m
//  OOPS
//
//  Created by Anshuman Dahale on 14/07/14.
//  Copyright (c) 2014 Anshuman Dahale. All rights reserved.
//

#import "Twitter.h"

@implementation Twitter

- (id) init {
    
    self = [super init];
    self.socialNetworkName = @"Twitter";
    return self;
}

- (void) sharePost:(SocialPost *)post {
    
    //Tweet instead of shareing
    
    NSLog(@"Tweet: %@\nTweet By: %@\nTo: %@", post.post, self.userName, post.sharedWith);
}

@end
