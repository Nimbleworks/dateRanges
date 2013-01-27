//
//  main.m
//  dateRanges
//
//  Created by John Nye on 27/01/2013.
//  Copyright (c) 2013 NimbleWorks LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+dateRanges.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSDate *now = [NSDate date];
        NSLog(@"Start of last week: %@", [[now startOfWeekBefore]description]);
        NSLog(@"End of last week: %@", [[now endOfWeekBefore]description]);
    }
    return 0;
}

