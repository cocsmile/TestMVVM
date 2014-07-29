//
//  PersonModel.m
//  TestMVVM
//
//  Created by 陈方强 on 14-7-29.
//  Copyright (c) 2014年 baina. All rights reserved.
//

#import "PersonModel.h"
#import "Person.h"

@implementation PersonModel


- (instancetype)initWithPerson:(Person *)person {
    self = [super init];
    if (!self) return nil;
    
    _person = person;
    if (person.salutation.length > 0) {
        _nameText = [NSString stringWithFormat:@"%@ %@ %@", self.person.salutation, self.person.firstName, self.person.lastName];
    } else {
        _nameText = [NSString stringWithFormat:@"%@ %@", self.person.firstName, self.person.lastName];
    }
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE MMMM d, yyyy"];
    _birthdateText = [dateFormatter stringFromDate:person.birthdate];
    
    return self;
}



@end
