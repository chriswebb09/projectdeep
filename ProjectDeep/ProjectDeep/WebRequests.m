//
//  WebRequests.m
//  ProjectDeep
//
//  Created by Christopher Webb-Orenstein on 6/22/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

#import "WebRequests.h"

@implementation WebRequests


-(instancetype)init
{
    return [self initWithURL:@"" SearchParameters:@""];
}

-(instancetype)initWithURL:(NSString*)url
{
    return [self initWithURL:url SearchParameters:@""];
}

-(instancetype)initWithURL:(NSString*)url
          SearchParameters:(NSString*)searchParameters
{
    self = [super init];
    
    if (self) {
        _url = url;
        _searchParameters = searchParameters;
    }
    
    return self;
}

-(NSString*)getWebDataFromURL
{
    NSError *error = nil;
    NSURL *url = [NSURL URLWithString:_url];
    NSString *htmlData = [NSString stringWithContentsOfURL:url encoding:NSASCIIStringEncoding error:&error];
    if (!htmlData) {
        NSLog(@"%@", error);
    }
    return htmlData;
}




@end
