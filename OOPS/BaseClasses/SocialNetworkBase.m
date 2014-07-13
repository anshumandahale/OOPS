//
//  SocialNetworkBase.m
//  OOPS
//
//  Created by Anshuman Dahale on 12/07/14.
//  Copyright (c) 2014 Anshuman Dahale. All rights reserved.
//

#import "SocialNetworkBase.h"

@implementation SocialNetworkBase

- (void) login:(SocialNetworkBase *)social {
    
    NSLog(@"Login with username: %@ and Password: %@", self.userName, self.userPassword);
    [self loginTheUser];
}

- (void) logout:(SocialNetworkBase *)social {
    
    NSLog(@"Logout from user: %@", self.userName);
}

- (void) loginTheUser {
    
    NSLog(@"Authenticating...");
    NSLog(@"Responding...");
    NSLog(@"Login Successful.");
}

@end
