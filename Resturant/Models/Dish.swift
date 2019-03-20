//
//  Dish.swift
//  Resturant
//
//  Created by Jeffrey Chang on 11/21/18.
//  Copyright © 2018 Jeffrey Chang. All rights reserved.
//

import Foundation

enum DishType: String {
    case appetizer
    case breakfast
    case lunch
    case dinner
    case dessert
}

struct Dish {
    let name: String
    var price: Double
    
    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
}
