//
//  FaceBookNetwork.m
//  OOPS
//
//  Created by Anshuman Dahale on 12/07/14.
//  Copyright (c) 2014 Anshuman Dahale. All rights reserved.
//

#import "FaceBook.h"
#import "SocialPost.h"

@interface FaceBook () {
    
}

@property (nonatomic, strong) SharingBase *shareNetwork;
@property (nonatomic, strong) SocialPost *socialPost;

@end

@implementation FaceBook

- (id) init {
    
    self = [super init];
    self.socialNetworkName = @"FaceBook";
    return self;
}


- (void) sharePost:(NSString *)post withFriends:(NSArray *)friends {
    
    // create the SocialPost object
    self.socialPost = [[SocialPost alloc] init];
    self.socialPost.post = post;
    self.socialPost.sharedBy = self.userName;
    self.socialPost.sharedWith = friends;
    
    
    self.shareNetwork = [[SharingBase alloc] init];
    self.socialPost.sharedBy = self.userName;
    self.shareNetwork.dataSource = self;
    [self.shareNetwork sharePost];
}


// Share Network Datasource Protocol
- (SocialPost *) getThePostToShare {
    
    return self.socialPost;
}

@end
