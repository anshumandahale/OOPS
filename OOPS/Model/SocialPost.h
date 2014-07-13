//
//  SocialPost.h
//  OOPS
//
//  Created by Anshuman Dahale on 12/07/14.
//  Copyright (c) 2014 Anshuman Dahale. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SocialPost : NSObject {
    
    NSString *post;
    NSString *sharedBy;
    NSArray *sharedWith;
}

@property (nonatomic, weak) NSString *post, *sharedBy;
@property (nonatomic, strong) NSArray *sharedWith;

@end
