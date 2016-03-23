//
//  Student.h
//  NSArrayHW
//
//  Created by Tin Blanc on 3/22/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
@property (nonatomic, strong) NSString *fullName;
@property (nonatomic, strong) NSString *studentID;

-(instancetype) init: (NSString*) fullName and: (NSString*) studentID;
-(void) sayYourName;
@end
