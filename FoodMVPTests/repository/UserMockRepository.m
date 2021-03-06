/*
 * Copyright (C) 2015 Olmo Gallegos Hernández.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "UserMockRepository.h"

@implementation UserMockRepository

-(BOOL) hasUsers
{
    return [users count] > 0;
}

-(int) getCount
{
    return (int)[users count];
}

-(User*) getItemAt: (int) position
{
    return [users objectAtIndex:position];
}

-(NSArray*) get
{
    User* user1 = [[User alloc] initWithId:1 name:@"Test User" imageUrl:@""];
    users = [[NSMutableArray alloc] init];
    [users addObject:user1];
    return users;
}

@end
