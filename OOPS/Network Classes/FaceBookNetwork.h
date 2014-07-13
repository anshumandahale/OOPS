//
//  FaceBookNetwork.h
//  OOPS
//
//  Created by Anshuman Dahale on 12/07/14.
//  Copyright (c) 2014 Anshuman Dahale. All rights reserved.
//

#import "MessagingNetworkBase.h"
#import "SharingNetworkBase.h"

@interface FaceBookNetwork : MessagingNetworkBase <ShareNetworkDatasource>

- (void) shareThisPostPubilc:(SocialPost *)post;

@end
