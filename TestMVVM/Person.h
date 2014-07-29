//
//  Person.h
//  TestMVVM
//
//  Created by 陈方强 on 14-7-29.
//  Copyright (c) 2014年 baina. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, readonly) NSString *salutation;
@property (nonatomic, readonly) NSString *firstName;
@property (nonatomic, readonly) NSString *lastName;
@property (nonatomic, readonly) NSDate *birthdate;

- (instancetype)initWithSalutation:(NSString *)salutation
                         firstName:(NSString *)firstName
                          lastName:(NSString *)lastName
                         birthdate:(NSDate *)birthdate;



@end