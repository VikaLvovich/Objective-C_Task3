//
//  LVBasket.h
//  LVTask3
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LVFruit.h"

@interface LVBasket : NSObject {
    
    LVFruit * fruits[10];
}

@property int countOfFruits;

- (void)addFruit:(LVFruit *)fruit;
- (LVFruit*)fruitAtIndex:(int)index;

@end

