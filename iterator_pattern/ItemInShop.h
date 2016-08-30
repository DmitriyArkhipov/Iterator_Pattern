//
//  ItemInShop.h
//  iterator_pattern
//
//  Created by Dmitriy Arkhipov on 30.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemInShop : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) BOOL isBroken;

- (instancetype) initWithName:(NSString *)name quality:(BOOL)isBroken;

@end
