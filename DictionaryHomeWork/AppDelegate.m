//
//  AppDelegate.m
//  DictionaryHomeWork
//
//  Created by gressmc on 26/10/14.
//  Copyright (c) 2014 gressmc. All rights reserved.
//

#import "AppDelegate.h"
#import "Student.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    Student* stud1 = [Student new];
    Student* stud2 = [stud1 mutableCopy];
    Student* stud3 = [stud1 mutableCopy];
    Student* stud4 = [stud1 mutableCopy];
    Student* stud5 = [stud1 mutableCopy];
    Student* stud6 = [stud1 mutableCopy];
    
    stud1.lastName = @"Petrov";
    stud2.lastName = @"Иванов";
    stud3.lastName = @"Sidorov";
    stud4.lastName = @"Papin";
    stud5.lastName = @"Medvishin";
    stud6.lastName = @"Smirnov";
    
    stud1.name = @"Kolya";
    stud2.name = @"Vanya";
    stud3.name = @"Ivan";
    stud4.name = @"Dima";
    stud5.name = @"Vova";
    stud6.name = @"Sergey";
    
    stud1.speech = @"I'm biologist";
    stud2.speech = @"I'm geologist";
    stud3.speech = @"I'm chemist";
    stud4.speech = @"I'm psychologist";
    stud5.speech = @"I'm mathematician";
    stud6.speech = @"I'm programmer";
    
    stud1.age = 25;
    stud2.age = 22;
    stud3.age = 27;
    stud4.age = 18;
    stud5.age = 20;
    stud6.age = 22;
    
    NSArray* arrayStudent = @[stud1,stud2,stud3,stud4,stud5,stud6];
     NSMutableDictionary* classRegister = [NSMutableDictionary new];
    
    for (Student* stud in arrayStudent) {
        NSString* key = [stud studentsKeyName:stud.name plusLastName:stud.lastName];
        [classRegister setObject:stud forKey:key];
    }
    
    NSArray* keys = [[classRegister allKeys] sortedArrayUsingSelector:@selector(compare:)];
    for (NSString* str in keys) {
        NSLog(@"%@", str);
    }
    
    
    /*
    NSArray* sArray = [classRegister keysSortedByValueUsingComparator:^NSComparisonResult(id obj1, id obj2){
        return [[obj1 name] compare:[obj2 name]];
    }];
    
    for (NSString* key in sArray) {
        id obj = [classRegister objectForKey:key];
        NSLog(@"\nkey = %@\n%@\n ", key, obj);
    }
    */
    /* NSMutableArray* array = [NSMutableArray new];
     for (NSString* key in [classRegister allKeys]){
     id obj = [classRegister objectForKey:key];
     [array addObject:obj];
     NSLog(@"\nkey = %@\n%@\n ", key, obj);
     }
     
     NSSortDescriptor *sortOne = [[NSSortDescriptor alloc] initWithKey: @"age" ascending: YES];
     NSArray* sortArray = [array sortedArrayUsingDescriptors:[NSArray arrayWithObjects:sortOne, nil]];
     
     for (Student* stud in sArray) {
     NSLog(@"%@",stud);
     }
     */
    /*
     NSArray* sArray = [classRegister keysSortedByValueUsingComparator:^NSComparisonResult(id obj1, id obj2){
     return [[NSNumber numberWithInteger:[obj1 age]] compare:[NSNumber numberWithInteger:[obj2 age]]];
     }];
     */
    /*
    NSMutableDictionary* classRegister2 = [NSMutableDictionary new];
    for (Student* stud in arrayStudent) {
        [classRegister2 setObject:stud forKey:@[stud.name,stud.lastName]];
    }
    
    //Доступ к первому элементу массива в ключе словаря
    NSString* str = [classRegister2[@[stud1.name,stud1.lastName]] objectAtIndex:0];
    NSLog(@"stud1.name = %@",str);
    */
    
    return YES;
}

@end
