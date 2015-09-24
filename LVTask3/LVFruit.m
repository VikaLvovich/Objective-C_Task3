//
//  LVFruit.m
//  LVTask3
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "LVFruit.h"

@implementation LVFruit

- (id)initWithSeeds:(int)count
{
    self = [super init];
    if (self) {
        self.countOfSeeds = count;
    }
    return self;
}

- (NSString*)getClassName
{
    return @"Fruit";
}

- (void)showInformation
{
    NSLog(@"This is a %@ with %d", [self getClassName], self.countOfSeeds);
}


@end
