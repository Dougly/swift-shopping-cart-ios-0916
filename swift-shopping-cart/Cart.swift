//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    var items: [Item] = []
    
    //takes all items in cart gets total cost in cents
    func totalPriceInCents () -> Int {
        var total = 0
        for item in items {
            total += item.priceInCents
        }
        return total
    }
    
    //adds item to cart
    func add(item itemX: Item) {
        self.items.append(itemX)
    }
    
    //takes item out of cart
    func remove(item itemX: Item) {
        for (index, itemInCart) in items.enumerated() {
            if itemInCart == itemX {
                items.remove(at: index)
            }
        }
    }
    
    //finds all items with given name
    func items(withName name: String) -> [Item] {
        var arrayOfItemsWithName = [Item]()
        for itemInCart in items {
            if itemInCart.name == name {
                arrayOfItemsWithName.append(itemInCart)
            }
        }
        return arrayOfItemsWithName
    }
    
    //finds all items with a given minimum price
    func items(withMinPrice price: Int) -> [Item] {
        var arrayOfItemsWithMinPrice = [Item]()
        for itemInCart in items {
            if itemInCart.priceInCents >= price {
                arrayOfItemsWithMinPrice.append(itemInCart)
            }
        }
        return arrayOfItemsWithMinPrice
    }
    
    //finds all items with a given maximum price
    func items(withMaxPrice price: Int) -> [Item] {
        var arrayOfItemsWithMaxPrice = [Item] ()
        for itemInCart in items {
            if itemInCart.priceInCents <= price {
                arrayOfItemsWithMaxPrice.append(itemInCart)
            }
        }
        return arrayOfItemsWithMaxPrice
    }
}
