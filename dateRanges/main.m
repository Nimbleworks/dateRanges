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
        //NSDate *now = [NSDate date];
        NSDate *testDate = [NSDate dateWithNaturalLanguageString:@"2013-11-14 12:00:00"];
        //NSLog(@"%@", [[testDate startOfYearWithOffset:1] description]);
        
        // Test the Weeks
        if(![[[testDate startOfThisWeek] description] isEqualToString:@"2013-11-10 00:00:00 +0000"]){
            NSLog(@"Start of this Week Failed: %@",[[testDate startOfThisWeek] description] );
            return 1;
        }
        if(![[[testDate endOfThisWeek] description] isEqualToString:@"2013-11-16 00:00:00 +0000"]){
            NSLog(@"End of this Week Failed: %@",[[testDate endOfThisWeek] description] );
            return 1;
        }
        
        if(![[[testDate startOfWeekBefore] description] isEqualToString:@"2013-11-03 00:00:00 +0000"]){
            NSLog(@"start of week before Failed: %@",[[testDate startOfWeekBefore] description] );
            return 1;
        }
        
        if (![[[testDate endOfWeekBefore]description] isEqualToString:@"2013-11-09 00:00:00 +0000"]) {
            NSLog(@"end of week before failed: %@", [[testDate endOfWeekBefore]description]);
            return 1;
        }
        
        //Test the years
        if(![[[testDate startOfYearWithOffset:0] description] isEqualToString:@"2013-01-01 00:00:00 +0000"]){
            NSLog(@"Start of this Year FAILED");
            return 1;
        }

        if(![[[testDate startOfYearWithOffset:1] description] isEqualToString:@"2014-01-01 00:00:00 +0000"]){
            NSLog(@"Start of Year FAILED %@", [[testDate startOfYearWithOffset:1] description]);
            return 1;
        }
        
        if(![[[testDate endOfThisYear] description] isEqualToString:@"2014-01-01 00:00:00 +0000"]){
            NSLog(@"end of this Year FAILED %@", [[testDate endOfThisYear] description]);
            return 1;
        }
        
        if(![[[testDate endOfYearWithOffset:-10] description] isEqualToString:@"2004-01-01 00:00:00 +0000"]){
            NSLog(@"end of 2004 FAILED %@", [[testDate endOfYearWithOffset:-10] description]);
            return 1;
        }
        
        
        //Test the days
        if(![[[testDate startOfDay]description] isEqualToString:@"2013-11-14 00:00:00 +0000"]){
            NSLog(@"start of today failed");
        }
        
        if (![[[testDate endOfDay]description] isEqualToString:@"2013-11-15 00:00:00 +0000"]) {
            NSLog(@"end of this day failed: %@", [[testDate endOfDay]description]);
        }
        if (![[[testDate endOfDayWithOffset:-10]description] isEqualToString:@"2013-11-05 00:00:00 +0000"]) {
            NSLog(@"end if day failed: %@", [[testDate endOfDayWithOffset:-10]description]);
        }
        
        if(![[[testDate endOfDayBefore]description] isEqualToString:@"2013-11-14 00:00:00 +0000"]){
            NSLog(@"end of day before failed %@", [[testDate endOfDayBefore]description]);
        }
        
        // Test the months
        if(![[[testDate startOfMonthWithOffset:0] description] isEqualToString:@"2013-11-01 00:00:00 +0000"]){
            NSLog(@"Start of this Month FAILED %@", [[testDate startOfMonthWithOffset:0] description]);
            return 1;
        }
        
        if(![[[testDate endOfMonthWithOffset:1] description] isEqualToString:@"2014-01-01 00:00:00 +0000"]){
            NSLog(@"endof month FAILED %@", [[testDate endOfMonthWithOffset:1] description]);
            return 1;
        }
        
    }
    return 0;
}

