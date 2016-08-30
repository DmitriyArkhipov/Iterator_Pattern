//
//  BadItemsEnumerator.m
//  iterator_pattern
//
//  Created by Dmitriy Arkhipov on 30.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "BadItemsEnumerator.h"

@interface BadItemsEnumerator ()

@property (strong, nonatomic) NSMutableArray *itemsArray;

/**
 Внутренний иетратор, из стандартных Cocoa.
 */
@property (strong, nonatomic) NSEnumerator *internalEnumerator;

@end

@implementation BadItemsEnumerator

- (instancetype) initWithItems:(NSMutableArray *)anItems {
    self = [super init];
    if (self) {
        _itemsArray = [[NSMutableArray alloc] init];

        for (ItemInShop *item in anItems) {
            if (item.isBroken) {
                [_itemsArray addObject:item];
            }
        }
        
        _internalEnumerator = [_itemsArray objectEnumerator];
    }
    
    return self;
}


- (NSArray *) allObjects {

    return _itemsArray;
}


- (id) nextObject {

    return [_internalEnumerator nextObject];
}

@end
