//
//  Student.h
//  DictionaryHomeWork
//
//  Created by gressmc on 26/10/14.
//  Copyright (c) 2014 gressmc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject <NSMutableCopying>

@property (strong,nonatomic)NSString* name;
@property (strong,nonatomic)NSString* lastName;
@property (strong,nonatomic)NSString* speech;
@property (assign,nonatomic)NSInteger age;

-(NSString*)studentsKeyName:(NSString*)name plusLastName:(NSString*)lastName;

@end
