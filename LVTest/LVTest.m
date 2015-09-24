//
//  LVTest.m
//  LVTest
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "LVBasket.h"
#import "LVApple.h"
#import "LVOrange.h"
#import "LVPrIterator.h"
#import "LVIterator.h"


@interface LVTest : XCTestCase

@end

@implementation LVTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testBasket{
    
    srand((time(NULL)));
    LVBasket *basket = [[LVBasket alloc] init];
    
    LVApple* apple = [[LVApple alloc]initWithSeeds: 2];
    [basket addFruit: apple];
    apple = [[LVApple alloc]initWithSeeds: 3];
    [basket addFruit: apple];
    apple = [[LVApple alloc]initWithSeeds: 4];
    [basket addFruit: apple];
    LVOrange* orange = [[LVOrange alloc]initWithSeeds: 5];
    [basket addFruit: orange];
    orange = [[LVOrange alloc]initWithSeeds: 6];
    [basket addFruit: orange];
    orange = [[LVOrange alloc]initWithSeeds: 7];
    [basket addFruit: orange];
    id <LVPrIterator> iter = [[LVIterator alloc]initWithBasket: basket];
    [orange release];
    [apple release];
    for(int i = 0; i <= basket.countOfFruits; i++)
    {
         XCTAssertTrue([iter hasNext], @"There is a next fruit in basket.");
    }
    XCTAssertFalse((![iter hasNext]), @"There is a next fruit in basket.");
    [basket release];
    [iter release];
   

}

@end
