//
//  ShopWarehouse.m
//  iterator_pattern
//
//  Created by Dmitriy Arkhipov on 30.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "ShopWarehouse.h"

@interface ShopWarehouse ()

@property (strong, nonatomic) NSMutableArray *goods;

@property (strong, nonatomic) GoodItemsEnumerator *goodItemsEnumerator;

@property (strong, nonatomic) BadItemsEnumerator *badItemsEnumerator;

@end

@implementation ShopWarehouse

- (instancetype) init {
    self = [super init];
    if (self) {
        _goods = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void) addItem:(ItemInShop *)anItem {
    [_goods addObject:anItem];
}
-(NSEnumerator *) getBrokenItemsEnumerator {
    
    _badItemsEnumerator = [[BadItemsEnumerator alloc] initWithItems:_goods];
    
    return _badItemsEnumerator;
}
-(NSEnumerator *) getGoodItemsEnumerator {
    
    _goodItemsEnumerator = [[GoodItemsEnumerator alloc] initWithItems:_goods];
    
    return _goodItemsEnumerator;
}

@end
