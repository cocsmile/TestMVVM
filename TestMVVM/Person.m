//
//  Person.m
//  TestMVVM
//
//  Created by 陈方强 on 14-7-29.
//  Copyright (c) 2014年 baina. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithSalutation:(NSString *)salutation
                         firstName:(NSString *)firstName
                          lastName:(NSString *)lastName
                         birthdate:(NSDate *)birthdate
{
    if (self == [super init]) {
        _salutation = salutation;
        _firstName = firstName;
        _lastName = lastName;
        _birthdate = birthdate;
    }
    return self;
}

@end
