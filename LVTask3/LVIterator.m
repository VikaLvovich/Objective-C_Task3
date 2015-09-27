//
//  LVIterator.m
//  LVTask3
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "LVIterator.h"
#import "LVFruit.h"

@implementation LVIterator

- (id)initWithBasket:(LVBasket*) bask
{
    if(self = [super init])
    {
        basket = [bask retain];
        currNum = 0;
        step = -bask.countOfFruits;
    }
    return self;
}

- (BOOL)hasNext
{
    return (step == 0) ? NO : YES;
}

- (LVFruit*)next
{
    LVFruit* fruit = [basket fruitAtIndex: currNum];
    if(step > 0)
        step--;
    else
        step++;
    step = -step;
    currNum += step;
    return fruit;
}

@end

