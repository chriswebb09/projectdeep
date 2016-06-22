//
//  DataClean.m
//  ProjectDeep
//
//  Created by Christopher Webb-Orenstein on 6/22/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

#import "DataClean.h"

@implementation DataClean

-(instancetype)init
{
    return [self initWithRegexPattern:@"http?://([-\\w\\.]+)+(:\\d+)?(/([\\w/_\\.]*(\\?\\S+)?)?)?"];
}

-(instancetype)initWithRegexPattern:(NSString*)regexPattern
{
    self = [super init];
    if (self) {
        _regexPattern = regexPattern;
        _urls = [[NSMutableArray alloc]init];
    }
    return self;
    
}

-(NSArray *)returnFormattedDataFromStringOfData:(NSString *)data
{
    NSError *error = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:_regexPattern options:NSRegularExpressionCaseInsensitive error:&error];
    NSArray *arrayOfAllMatches = [regex matchesInString:data options:0 range:NSMakeRange(0, [data length])];
    
    for (NSTextCheckingResult *match in arrayOfAllMatches) {
        NSString *substringForMatch = [data substringWithRange:match.range];
        [self.urls addObject:substringForMatch];
    }
    return [NSArray arrayWithArray:self.urls];
}

@end
