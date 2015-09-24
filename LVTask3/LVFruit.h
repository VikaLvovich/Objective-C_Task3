//
//  LVFruit.h
//  LVTask3
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LVFruit : NSObject

@property int countOfSeeds;

- (id)initWithSeeds:(int)count;
- (NSString*) getClassName;
- (void)showInformation;

@end

