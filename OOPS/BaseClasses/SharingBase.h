//
//  SharingNetworkBase.h
//  OOPS
//
//  Created by Anshuman Dahale on 12/07/14.
//  Copyright (c) 2014 Anshuman Dahale. All rights reserved.
//

#import "SocialNetworkBase.h"

// Model
@class SocialPost;

/**
 *  Datasource Protocol for getting the Post
 */
@protocol ShareNetworkDatasource <NSObject>
    - (SocialPost *) getThePostToShare;
@end


/**
 *  Class Declaration
 */
@interface SharingBase : SocialNetworkBase {
    
}

@property (nonatomic, strong) SocialPost *post;
@property (nonatomic, weak) id <ShareNetworkDatasource> dataSource;

- (void) createPost:(NSString *)post forUsers:(NSArray *)users;
- (void) sharePost;

@end
