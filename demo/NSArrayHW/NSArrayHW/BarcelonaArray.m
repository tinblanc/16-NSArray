//
//  BarcelonaArray.m
//  NSArrayHW
//
//  Created by Tin Blanc on 3/23/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "BarcelonaArray.h"
#import "Player.h"

@interface BarcelonaArray ()

@end

@implementation BarcelonaArray

- (void)viewDidLoad {
    [super viewDidLoad];

    Player* p1 = [[Player alloc] initID:@"1" andPosition:@"GK" andName:@"Marc-André ter Stegen"];
    Player* p2 = [[Player alloc] initID:@"2" andPosition:@"DF" andName:@"Gerard Piqué (4th captain)"];
    Player* p3 = [[Player alloc] initID:@"3" andPosition:@"MF" andName:@"Ivan Rakitić"];
    Player* p4 = [[Player alloc] initID:@"4" andPosition:@"MF" andName:@"Sergio Busquets (3rd captain)"];
    Player* p5 = [[Player alloc] initID:@"5" andPosition:@"FW" andName:@"Pedro Rodríguez"];
    Player* p6 = [[Player alloc] initID:@"6" andPosition:@"MF" andName:@"Andrés Iniesta (captain)"];
    Player* p7 = [[Player alloc] initID:@"7" andPosition:@"FW" andName:@"Luis Suárez"];
    Player* p8 = [[Player alloc] initID:@"8" andPosition:@"FW" andName:@"Lionel Messi (vice-captain)"];
    Player* p9 = [[Player alloc] initID:@"9" andPosition:@"FW" andName:@"Neymar"];
    Player* p10 = [[Player alloc] initID:@"10" andPosition:@"MF" andName:@"Rafinha"];
    Player* p11 = [[Player alloc] initID:@"11" andPosition:@"GK" andName:@"Claudio Bravo"];
    Player* p12 = [[Player alloc] initID:@"12" andPosition:@"MF" andName:@"Javier Mascherano"];
    Player* p13 = [[Player alloc] initID:@"13" andPosition:@"DF" andName:@"Marc Bartra"];
    Player* p14 = [[Player alloc] initID:@"14" andPosition:@"DF" andName:@"Douglas"];
    Player* p15 = [[Player alloc] initID:@"15" andPosition:@"DF" andName:@"Jordi Alba"];
    
    NSArray* barcelona = @[p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15];
    
//    for (Player* item in barcelona) {
//        NSLog(@"%@: %@ %@", item.playerID , item.position , item.name);
//    }

    NSMutableArray* lineups = [NSMutableArray new];
    
    
    while (lineups.count<11) {
        int index = arc4random_uniform((u_int32_t)barcelona.count) ;
        
        if([lineups indexOfObject:barcelona[index]] == NSNotFound){
            [lineups addObject:barcelona[index]];
        }
        
    }

    NSLog(@"Line-ups:");
    for (Player* item in lineups) {
        NSLog(@"%@: %@ %@", item.playerID , item.position , item.name);
    }
    
    
}






@end
