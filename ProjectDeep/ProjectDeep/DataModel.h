//
//  DataModel.h
//  ProjectDeep
//
//  Created by Christopher Webb-Orenstein on 6/22/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DataModel : NSObject

@property (strong, nonatomic) NSUserDefaults *userDefaults;
@property (strong, nonatomic) NSMutableArray *favorites;
@property (strong, nonatomic) UIImage *image;

-(void)saveFavoriteLinks:(NSMutableArray*)favoriteLinks;

-(void)saveFavoriteImages:(NSMutableArray*)favoriteImages;

@end
