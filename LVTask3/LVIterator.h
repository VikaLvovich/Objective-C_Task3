//
//  LVIterator.h
//  LVTask3
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LVFruit.h"
#import "LVPrIterator.h"
#import "LVBasket.h"

@interface LVIterator : NSObject <LVPrIterator>{
    
    int step;
    int currNum;
    LVBasket* basket;
}

- (id) initWithBasket:(LVBasket*) bask;
- (BOOL)hasNext;
- (LVFruit *)next;

@end
