//
//  Player.h
//  NSArrayHW
//
//  Created by Tin Blanc on 3/23/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject
@property (nonatomic,strong) NSString* playerID;
@property (nonatomic,strong) NSString* position;
@property (nonatomic,strong) NSString* name;

-(instancetype) initID: (NSString*) playerID andPosition: (NSString*) position andName: (NSString*) name;

@end
