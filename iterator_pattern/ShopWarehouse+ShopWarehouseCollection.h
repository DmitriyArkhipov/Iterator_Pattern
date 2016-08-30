//
//  ShopWarehouse+ShopWarehouseCollection.h
//  iterator_pattern
//
//  Created by Dmitriy Arkhipov on 30.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "ShopWarehouse.h"
#import "CollectionIterator.h"

@interface ShopWarehouse (ShopWarehouseCollection)

- (CollectionIterator *) getGoodItemsEnumeratorCollection;

@end
