//
//  QueryArrayCS.m
//  NSArrayHW
//
//  Created by Tin Blanc on 3/22/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "QueryArrayCS.h"
#import "Student.h"

@interface QueryArrayCS ()

@end

@implementation QueryArrayCS

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *array2 = @[@"ABC", @3.14, @"photo"];
    if ([array2 containsObject:@"ABC"]) {
        NSLog(@"array1 contains ABC");
    }
    
    // Khai Bao
    Student* a = [[Student alloc] init:@"Tin Blanc" and:@"01"];
    Student* b = [[Student alloc] init:@"Jessi" and:@"02"];
    Student* c = [[Student alloc] init:@"Mina" and:@"03"];
    
    NSArray* arr3 = @[a, b, c];
    
    Student* x = [[Student alloc] init:@"Jessii" and:@"02"];
    
    NSLog(@"We found Tin Blanc at %ld", [arr3 indexOfObject:x]); // find object x in arr3
    
    NSUInteger foundIndex = [arr3 indexOfObjectPassingTest:^BOOL(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        Student* student = (Student*) obj;
        if ([student.fullName isEqualToString:@"Mina"]) {
            return true;
        } else {
            return false;
        }
    }];
    
//    if (foundIndex == NSNotFound) {
//        NSLog(@"Not Found");
//    } else {
//        NSLog(@"Found %ld", foundIndex);
//
//    }
    
    
}



@end
