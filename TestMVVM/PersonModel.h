//
//  PersonModel.h
//  TestMVVM
//
//  Created by 陈方强 on 14-7-29.
//  Copyright (c) 2014年 baina. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;

@interface PersonModel : NSObject

- (instancetype)initWithPerson:(Person *)person;

@property (nonatomic, readonly) Person *person;
@property (nonatomic, readonly) NSString *nameText;
@property (nonatomic, readonly) NSString *birthdateText;

@end
