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
        NSDate *now = [NSDate date];
        NSLog(@"Start of last week: %@", [[now startOfWeekBefore]description]);
        NSLog(@"End of last week: %@", [[now endOfWeekBefore]description]);
        NSLog(@"Start of today:%@", [[now startOfDay]description]);
        NSLog(@"End of today:%@", [[now endOfDay]description]);
        NSLog(@"end of 5 days time:%@",[[now endOfDayWithOffset:5]description]);
        NSLog(@"Start of year, 50 years ago:%@", [[now startOfYearWithOffset:-50]description]);
        NSLog(@"End of year, 50 years ago:%@", [[now endOfYearWithOffset:-50]description]);
    }
    return 0;
}

