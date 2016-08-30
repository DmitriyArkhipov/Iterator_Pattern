//
//  GoodItemsIterator.m
//  iterator_pattern
//
//  Created by Dmitriy Arkhipov on 30.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "GoodItemsEnumerator.h"

@interface GoodItemsEnumerator ()

@property (strong, nonatomic) NSMutableArray *itemsArray;

/**
 Внутренний итtратор, из стандартных Cocoa.
 */
@property (strong, nonatomic) NSEnumerator *internalEnumerator;

@end

@implementation GoodItemsEnumerator

- (instancetype) initWithItems:(NSMutableArray *)anItems {
    self = [super init];
    if (self) {
        _itemsArray = [[NSMutableArray alloc] init];
        
        for (ItemInShop *item in anItems) {
            if (!item.isBroken) {  //единственное отличие от класса BadItemsEnumerator
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
