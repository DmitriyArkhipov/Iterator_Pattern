//
//  ShopWarehouse+ShopWarehouseCollection.m
//  iterator_pattern
//
//  Created by Dmitriy Arkhipov on 30.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "ShopWarehouse+ShopWarehouseCollection.h"



@implementation ShopWarehouse (ShopWarehouseCollection)


- (CollectionIterator *) getGoodItemsEnumeratorCollection {
    
    NSMutableArray *allObjects = [[NSMutableArray alloc] init]; //массив не отсортированнных объектов
    
    NSEnumerator *goodEnumerator = [self getGoodItemsEnumerator];
    NSEnumerator *brokenEnumerator = [self getBrokenItemsEnumerator];
//    NSMutableArray *allObjects = [[goodEnumerator allObjects] mutableCopy];
    
    [allObjects addObjectsFromArray:[goodEnumerator allObjects]];
    [allObjects addObjectsFromArray:[brokenEnumerator allObjects]];
    
    CollectionIterator *iterator = [[CollectionIterator alloc] initWithItems:allObjects];
    
    return iterator;
}

@end
