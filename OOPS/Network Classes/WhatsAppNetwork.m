//
//  WhatsAppNetwork.m
//  OOPS
//
//  Created by Anshuman Dahale on 12/07/14.
//  Copyright (c) 2014 Anshuman Dahale. All rights reserved.
//

#import "WhatsAppNetwork.h"

@implementation WhatsAppNetwork

- (void) setShowLastSeen:(BOOL)showLastSeen {
    
    if(showLastSeen) {
        
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        formatter.timeZone = [NSTimeZone defaultTimeZone];
        formatter.dateFormat = @"dd MMM hh:mm:ss a";
        NSString *dateString = [formatter stringFromDate:[NSDate date]];
        NSLog(@"User Last Seen At: %@", dateString);
    }
    else {
        NSLog(@"User has hidden his last seen time");
    }
}

@end
