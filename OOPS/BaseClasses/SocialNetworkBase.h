//
//  SocialNetworkBase.h
//  OOPS
//
//  Created by Anshuman Dahale on 12/07/14.
//  Copyright (c) 2014 Anshuman Dahale. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SocialNetworkBase : NSObject

// Properties
@property (nonatomic, weak) NSString *socialNetworkName;
@property (nonatomic, weak) NSString *userName;
@property (nonatomic, weak) NSString *userPassword;


// Methods
- (void) login;
- (void) logout;

@end
