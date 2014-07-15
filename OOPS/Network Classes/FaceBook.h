//
//  FaceBookNetwork.h
//  OOPS
//
//  Created by Anshuman Dahale on 12/07/14.
//  Copyright (c) 2014 Anshuman Dahale. All rights reserved.
//

#import "MessagingBase.h"
#import "SharingBase.h"

@interface FaceBook : MessagingBase <ShareNetworkDatasource>

- (void) sharePost:(NSString *)post withFriends:(NSArray *)friends;

@end
