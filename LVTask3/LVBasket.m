//
//  LVBasket.m
//  LVTask3
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "LVBasket.h"


@implementation LVBasket

- (id)init
{
    self = [super init];
    if (self) {
        self.countOfFruits = 0;
    }
    return self;
}

- (void)addFruit:(LVFruit *)fruit
{
    fruits [self.countOfFruits] = [fruit retain];
    self.countOfFruits++;
}

- (LVFruit*)fruitAtIndex:(int)index
{
    return fruits[index];
}

- (void)dealloc
{
    for(int i = 0; i <= self.countOfFruits; i++)
    {
        [fruits[i] release];
    }
    
    [super dealloc];
}



@end

