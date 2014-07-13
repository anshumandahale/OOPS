//
//  Message.h
//  OOPS
//
//  Created by Anshuman Dahale on 12/07/14.
//  Copyright (c) 2014 Anshuman Dahale. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Message : NSObject {
    
    NSString *message;
    NSString *from;
    NSString *to;
}

@property (nonatomic, weak) NSString *message;
@property (nonatomic, weak) NSString *from;
@property (nonatomic, weak) NSString *to;
@end
