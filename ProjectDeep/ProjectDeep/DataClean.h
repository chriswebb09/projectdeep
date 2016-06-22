//
//  DataClean.h
//  ProjectDeep
//
//  Created by Christopher Webb-Orenstein on 6/22/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataClean : NSObject

@property (strong, nonatomic) NSString *regexPattern;
@property (strong, nonatomic) NSMutableArray *urls;

-(instancetype)init;
-(instancetype)initWithRegexPattern:(NSString*)regexPattern;
-(NSArray *)returnFormattedDataFromStringOfData:(NSString *)data;

@end
