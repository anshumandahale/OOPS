//
//  SocialNetworkBase.m
//  OOPS
//
//  Created by Anshuman Dahale on 12/07/14.
//  Copyright (c) 2014 Anshuman Dahale. All rights reserved.
//

#import "SocialNetworkBase.h"

@implementation SocialNetworkBase

- (void) login {
    
    NSLog(@"Login with username: %@ and Password: %@ On Network: %@", self.userName, self.userPassword, self.socialNetworkName);
    [self loginTheUser];
}

- (void) logout {
    
    NSLog(@"Logout from user: %@", self.userName);
}

- (void) loginTheUser {
    
    NSLog(@"Authenticating...");
    NSLog(@"Responding...");
    NSLog(@"Login Successful.");
}

@end
