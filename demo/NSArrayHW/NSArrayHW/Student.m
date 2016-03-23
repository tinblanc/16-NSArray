//
//  Student.m
//  NSArrayHW
//
//  Created by Tin Blanc on 3/22/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "Student.h"

@implementation Student

-(instancetype) init: (NSString*) fullName and: (NSString*) studentID{
    if(self = [super init]){
        self.fullName = fullName;
        self.studentID = studentID;
    }
    return self;
}

-(void) sayYourName{
    NSLog(@"My name is %@", self.fullName);
}

-(BOOL) isEqual:(id)object{
    if ([object isMemberOfClass:[Student class]]) {
        Student* temp = (Student*) object;
        if ([self.fullName isEqual:temp.fullName] && [self.studentID isEqual:temp.studentID])  {
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}


@end
