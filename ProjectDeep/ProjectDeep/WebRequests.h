//
//  WebRequests.h
//  ProjectDeep
//
//  Created by Christopher Webb-Orenstein on 6/22/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WebRequests : NSObject
@property (strong, nonatomic) NSString *url;
@property (strong, nonatomic) NSString *webData;
@property (strong, nonatomic) NSString *searchParameters;

-(instancetype)init;

-(instancetype)initWithURL:(NSString*)url;

-(instancetype)initWithURL:(NSString*)url
          SearchParameters:(NSString*)searchParameters;

-(NSString*)getWebDataFromURL;


@end
