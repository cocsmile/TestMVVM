//
//  ViewController.m
//  TestMVVM
//
//  Created by 陈方强 on 14-7-29.
//  Copyright (c) 2014年 baina. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"


@interface ViewController ()

@property(nonatomic,weak)IBOutlet UILabel* nameLabel;
@property(nonatomic,weak)IBOutlet UILabel* birthdateLabel;
@property(nonatomic,retain)Person *model;
@end

@implementation ViewController
@synthesize model;

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.model = [[Person alloc]initWithSalutation:@"1" firstName:@"2" lastName:@"3" birthdate:[NSDate date]];
    
    if (self.model.salutation.length > 0) {
        self.nameLabel.text = [NSString stringWithFormat:@"%@ %@ %@", self.model.salutation, self.model.firstName, self.model.lastName];
    } else {
        self.nameLabel.text = [NSString stringWithFormat:@"%@ %@", self.model.firstName, self.model.lastName];
    }
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE MMMM d, yyyy"];
    self.birthdateLabel.text = [dateFormatter stringFromDate:model.birthdate];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
