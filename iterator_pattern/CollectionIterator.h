//
//  CollectionIterator.h
//  iterator_pattern
//
//  Created by Dmitriy Arkhipov on 30.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CollectionIterator : NSEnumerator

- (instancetype)initWithItems:(NSMutableArray *)items;

- (NSArray *)allObjects;

- (id) nextObject;

- (id) prevObject;

- (id) currentObject;

- (id) firstObject;

@end
