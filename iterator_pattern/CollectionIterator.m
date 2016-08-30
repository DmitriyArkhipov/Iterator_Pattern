//
//  CollectionIterator.m
//  iterator_pattern
//
//  Created by Dmitriy Arkhipov on 30.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "CollectionIterator.h"
#import "ItemInShop.h"

@interface CollectionIterator ()

@property (strong, nonatomic) id currentObject;

@property (strong, nonatomic) NSMutableArray *itemsArray;

/**
 Внутренний итератор
 */
@property (strong, nonatomic) NSEnumerator *internalEnumerator;

/**
 Внутренний обратный итератор
 */
@property (strong, nonatomic) NSEnumerator *reverseInternalEnumerator;

@end



@implementation CollectionIterator

- (instancetype)initWithItems:(NSMutableArray *)items {

    self = [super init];
    if (self) {
        
        _itemsArray = items;
        
        _internalEnumerator = [_itemsArray objectEnumerator];
        _reverseInternalEnumerator = [_itemsArray reverseObjectEnumerator];
    }
    return self;

}

- (NSArray *)allObjects {
    
    return _itemsArray;

}

- (id) nextObject {
    
    _currentObject = [_internalEnumerator nextObject];
    
    return _currentObject;

}

- (id) prevObject {
    
    _currentObject = [_reverseInternalEnumerator nextObject];
    
    return _currentObject;
}



- (id) currentObject {

    if (!_currentObject) {
        NSLog(@"CollectionIterator: Итератор еще не проходил кроллекцию");
        return nil;
    }
    
    return _currentObject;

}

- (id) firstObject {
    return _itemsArray[0];
}

@end
