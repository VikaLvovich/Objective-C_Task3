//
//  main.m
//  LVTask3
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LVBasket.h"
#import "LVApple.h"
#import "LVOrange.h"
#import "LVIterator.h"
#import "LVPrIterator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        srand((time(NULL)));
        LVBasket *basket = [[LVBasket alloc] init];
        LVApple* apple = [[LVApple alloc]initWithSeeds: 2];
        [basket addFruit: apple];
        [apple release];
        apple = [[LVApple alloc]initWithSeeds: 3];
        [basket addFruit: apple];
        [apple release];
        apple = [[LVApple alloc]initWithSeeds: 4];
        [basket addFruit: apple];
        [apple release];
        LVOrange* orange = [[LVOrange alloc]initWithSeeds: 5];
        [basket addFruit: orange];
        [orange release];
        orange = [[LVOrange alloc]initWithSeeds: 6];
        [basket addFruit: orange];
        [orange release];
        orange = [[LVOrange alloc]initWithSeeds: 7];
        [basket addFruit: orange];
        [orange release];
        id <LVPrIterator> iter = [[LVIterator alloc]initWithBasket: basket];
        while([iter hasNext])
        {
            [[iter next] showInformation];
        }
        [basket release];
        [iter release];
    }
    return 0;
}

