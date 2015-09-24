//
//  LVPrIterator.h
//  LVTask3
//
//  Created by fpmi on 23.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LVPrIterator <NSObject>

- (BOOL)hasNext;
- (id)next;

@end
