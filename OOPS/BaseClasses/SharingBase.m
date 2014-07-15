//
//  SharingNetworkBase.m
//  OOPS
//
//  Created by Anshuman Dahale on 12/07/14.
//  Copyright (c) 2014 Anshuman Dahale. All rights reserved.
//

#import "SharingBase.h"
#import "SocialPost.h"

@implementation SharingBase


- (void) createPost:(NSString *)post forUsers:(NSArray *)users {
    
    self.post = [[SocialPost alloc] init];
    self.post.post = post;
    self.post.sharedBy = self.userName;
    self.post.sharedWith = users;
}



- (void) sharePost {
    
    if([self.dataSource respondsToSelector:@selector(getThePostToShare)]) {
        
        self.post = [self.dataSource getThePostToShare];
    }
    
    if(self.post)
        NSLog(@"Share Post: \"%@\" with users: %@", self.post.post, self.post.sharedWith);
}


@end
