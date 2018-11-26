//
//  MockData.swift
//  Resturant
//
//  Created by Jeffrey Chang on 11/26/18.
//  Copyright © 2018 Jeffrey Chang. All rights reserved.
//

import Foundation

struct MockData {
    static func fetchMockData() -> Menu {
        let appetizerDishes = [Dish(name: "app1", price: 1.00), Dish(name: "app2", price: 2.00), Dish(name: "app3", price: 3.00)]
        let appetizerSubMenu = SubMenu(dishType: .appetizer, dishes: appetizerDishes)
        
        let lunchDishes = [Dish(name: "lunch1", price: 1.00), Dish(name: "lunch2", price: 2.00), Dish(name: "lunch3", price: 3.00)]
        let lunchSubMenu = SubMenu(dishType: .lunch, dishes: lunchDishes)
        
        let dinnerDishes = [Dish(name: "dinner1", price: 1.00), Dish(name: "dinner2", price: 2.00), Dish(name: "dinner3", price: 3.00)]
        let dinnerSubMenu = SubMenu(dishType: .dinner, dishes: dinnerDishes)
        let menu = Menu(subMenus: [appetizerSubMenu, lunchSubMenu, dinnerSubMenu])
        return menu
    }
}
