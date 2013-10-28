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
        NSDate *testDate = [NSDate dateWithString:@"2012-01-01 00:00:00"];
        
        if([[[testDate startOfYearWithOffset:+1] description] isEqualToString:@"2013-01-01 00:00:00"]){
            NSLog(@"%@", [testDate startOfYearWithOffset:+1]);
        }else{
            NSLog(@"Test Passed");
        }
        
        NSLog(@"Start of this week:             %@", [[now startOfThisWeek]description]);
        NSLog(@"Start of last week:             %@", [[now startOfWeekBefore]description]);
        NSLog(@"End of last week:               %@", [[now endOfWeekBefore]description]);
        NSLog(@"Start of today:                 %@", [[now startOfDay]description]);
        NSLog(@"End of today:                   %@", [[now endOfDay]description]);
        NSLog(@"Start of year, 50 years ago:    %@", [[now startOfYearWithOffset:-50]description]);
        NSLog(@"End of year, 50 years ago:      %@", [[now endOfYearWithOffset:-50]description]);
        NSLog(@"Start of this month:            %@", [[now startOfThisMonth]description]);
        NSLog(@"End of this month:              %@", [[now endOfThisMonth]description]);
        NSLog(@"Start of last month:            %@", [[now startOfMonthBefore]description]);
        NSLog(@"End of month before:            %@", [[now endOfMonthBefore]description]);
        NSLog(@"start of 10 months ago:         %@", [[now startOfMonthWithOffset:-10]description]);
    }
    return 0;
}

