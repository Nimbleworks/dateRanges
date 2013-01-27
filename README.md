NSDate+dateRanges
==========
Date Ranges is an NSDate category to help get start and end dates of a date unit such as day, week, month or year. So, <code>[[NSDate date] startOfDay]</code>  that returns an NSDate at the start of the current day. <code>[[NSDate date] endOfDay]</code> will return a date at the end of today. 

## What's it for? 
Ever need to create a CoreData predicate that searches for something within a range, like yesterday, tomorrow or next week? Now just use this category.

## What Can I do?

Get the Previous, Current or Next 

* day
* week
* month
* year

Along with any offset for days, weeks, months and years. So given the date 29 April 1901 I can use the following methods

<code>[date endOfDayWithOffset:10000]</code> to get then end of the 10000th day after 29 April 1901. 

Alternatively I could use <code>[date endOfYearWithOffset:50]</code> to get a date and time at the end of 1951. 

#### Technical Notes 
This is a command line utility for running a few examples, clone the project and copy <code>NSDate+dateRange.h</code> and <code>NSDate+dateRange.m</code> into your project. These are ARC files, so if you're not using ARC, it's probably best to fork it and do your own memory management. 
