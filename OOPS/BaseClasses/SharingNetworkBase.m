//
//  SharingNetworkBase.m
//  OOPS
//
//  Created by Anshuman Dahale on 12/07/14.
//  Copyright (c) 2014 Anshuman Dahale. All rights reserved.
//

#import "SharingNetworkBase.h"
#import "SocialPost.h"

@implementation SharingNetworkBase

- (void) sharePost:(SocialPost *)socialPost {
    
    if(socialPost) {
        
        NSLog(@"Share Post: \"%@\" with users: %@", socialPost.post, socialPost.sharedWith);
        return;
    }
    
    
    else if([self.dataSource respondsToSelector:@selector(getThePostToShare)]) {
        
        SocialPost *post = [self.dataSource getThePostToShare];
        NSLog(@"Share Post: \"%@\" with users: %@", post.post, post.sharedWith);
    }
}


@end
