//
//  ItemInShop.m
//  iterator_pattern
//
//  Created by Dmitriy Arkhipov on 30.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "ItemInShop.h"

@implementation ItemInShop

- (instancetype) initWithName:(NSString *)name quality:(BOOL)isBroken {
    
    self = [super init];
    if (self) {
        _name = name;
        _isBroken = isBroken;
    }
    return self;
}

@end
