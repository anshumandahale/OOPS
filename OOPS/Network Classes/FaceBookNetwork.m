//
//  FaceBookNetwork.m
//  OOPS
//
//  Created by Anshuman Dahale on 12/07/14.
//  Copyright (c) 2014 Anshuman Dahale. All rights reserved.
//

#import "FaceBookNetwork.h"
#import "SocialPost.h"

@interface FaceBookNetwork () {
    
}

@property (nonatomic, strong) SharingNetworkBase *shareNetwork;
@property (nonatomic, weak) SocialPost *socialPost;

@end

@implementation FaceBookNetwork

- (id) init {
    
    self = [super init];
    self.socialNetworkName = @"FaceBook";
    return self;
}


- (void) shareThisPostPubilc:(SocialPost *)post {
    
    self.socialPost = post;
    self.shareNetwork = [[SharingNetworkBase alloc] init];
    self.socialPost.sharedBy = self.userName;
    self.shareNetwork.dataSource = self;
    [self.shareNetwork sharePost:nil];
}


// Share Network Datasource Protocol
- (SocialPost *) getThePostToShare {
    
    return self.socialPost;
}

@end
