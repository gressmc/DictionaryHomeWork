//
//  Student.m
//  DictionaryHomeWork
//
//  Created by gressmc on 26/10/14.
//  Copyright (c) 2014 gressmc. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.lastName = @"Undefined";
        self.name = @"Undefined";
        self.speech = @"Undefined";
        self.age = 20;
    }
    return self;
}

-(NSString*) description{
    NSString* str = [NSString stringWithFormat:@"Фамилия - %@, Имя - %@, Приветствие - %@, Возраст - %ld",self.lastName,self.name,self.speech, self.age];
    return str;
}

-(NSString*)studentsKeyName:(NSString*)name plusLastName:(NSString*)lastName{
    NSString* str = [lastName stringByAppendingString:[NSString stringWithFormat:@" %@",name]];
    return str;
}

-(id)mutableCopyWithZone:(NSZone *)zone{
    Student* copy = [Student new];
    copy.lastName = [self.lastName copy];
    copy.name = [self.name copy];
    copy.speech = [self.speech copy];
    return copy;
}

@end
