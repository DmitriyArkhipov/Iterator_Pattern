//
//  ViewController.m
//  iterator_pattern
//
//  Created by Dmitriy Arkhipov on 30.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "ViewController.h"
#import "ShopWarehouse.h"
#import "ShopWarehouse+ShopWarehouseCollection.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    ShopWarehouse *shopWarehouse = [[ShopWarehouse alloc] init];
    
    ItemInShop *item0 = [[ItemInShop alloc] initWithName:@"Item0" quality:YES];
    
    ItemInShop *item1 = [[ItemInShop alloc] initWithName:@"Item1" quality:NO];
    
    ItemInShop *item2 = [[ItemInShop alloc] initWithName:@"Item2" quality:NO];
    
    ItemInShop *item3 = [[ItemInShop alloc] initWithName:@"Item3" quality:NO];
    
    ItemInShop *item4 = [[ItemInShop alloc] initWithName:@"Item4" quality:YES];
    
    ItemInShop *item5 = [[ItemInShop alloc] initWithName:@"Item5" quality:NO];
    
    [shopWarehouse addItem:item0];
    [shopWarehouse addItem:item1];
    [shopWarehouse addItem:item2];
    [shopWarehouse addItem:item3];
    [shopWarehouse addItem:item4];
    [shopWarehouse addItem:item5];
    
    NSEnumerator *goodIterator = [shopWarehouse getGoodItemsEnumerator];
    NSEnumerator *badIterator = [shopWarehouse  getBrokenItemsEnumerator];
    
    ItemInShop *element;
    
    while (element = [goodIterator nextObject]) {
        NSLog(@"Good Item = %@", element.name);
    }
    
    NSLog(@"=========================================");
    
    while (element = [badIterator nextObject]) {
        NSLog(@"Bad Item = %@", element.name);
    }
    
    //дополнительно созданный итератор с расширенным функционалом :]
    
    NSLog(@"===========Collection Iterator===========");
    
    CollectionIterator *collectionIterator = [shopWarehouse getGoodItemsEnumeratorCollection];
    
    element = [collectionIterator currentObject];
    NSLog(@"Collection Item = %@", element.name);
    
    element = [collectionIterator nextObject];
    NSLog(@"Collection Item = %@", element.name);
    
    element = [collectionIterator currentObject];
    NSLog(@"Collection Item = %@", element.name);
    
    element = [collectionIterator prevObject];
    NSLog(@"Collection Item = %@", element.name);
    
    NSLog(@"=========================================");
   
    while (element = [collectionIterator nextObject]) {
        NSLog(@"Bad Item = %@", element.name);
    }
    
    NSLog(@"===========Collection reverse============");
    
    while ((element = [collectionIterator prevObject])) {
        NSLog(@"Bad Item = %@", element.name);
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
