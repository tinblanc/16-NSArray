//
//  Player.m
//  NSArrayHW
//
//  Created by Tin Blanc on 3/23/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "Player.h"

@implementation Player

-(instancetype) initID:(NSString *)playerID andPosition:(NSString *)position andName:(NSString *)name {
    if (self = [super init]) {
        self.playerID = playerID;
        self.position = position;
        self.name = name;
    }
    return self;
}

@end
