//
//  Menu.swift
//  Resturant
//
//  Created by Jeffrey Chang on 11/21/18.
//  Copyright © 2018 Jeffrey Chang. All rights reserved.
//

import Foundation

struct Menu {
    let dishType: DishType
    var dishes = [Dish]()
    init(dishType: DishType, dishes: [Dish]) {
        self.dishType = dishType
        self.dishes = dishes
    }
}
