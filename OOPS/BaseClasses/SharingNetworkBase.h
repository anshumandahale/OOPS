//
//  SharingNetworkBase.h
//  OOPS
//
//  Created by Anshuman Dahale on 12/07/14.
//  Copyright (c) 2014 Anshuman Dahale. All rights reserved.
//

#import "SocialNetworkBase.h"

// Model
#import "SocialPost.h"
@protocol ShareNetworkDatasource <NSObject>

- (SocialPost *) getThePostToShare;

@end

@interface SharingNetworkBase : SocialNetworkBase {
    
}

@property (nonatomic, weak) id <ShareNetworkDatasource> dataSource;

- (void) sharePost;
@end
