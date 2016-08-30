//
//  ShopWarehouse.h
//  iterator_pattern
//
//  Created by Dmitriy Arkhipov on 30.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ItemInShop.h"
#import "BadItemsEnumerator.h"
#import "GoodItemsEnumerator.h"

@interface ShopWarehouse : NSObject

-(void) addItem:(ItemInShop *)anItem;
-(NSEnumerator *) getBrokenItemsEnumerator;
-(NSEnumerator *) getGoodItemsEnumerator;

@end
