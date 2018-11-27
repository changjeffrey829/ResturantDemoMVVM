//
//  MockData.swift
//  Resturant
//
//  Created by Jeffrey Chang on 11/26/18.
//  Copyright © 2018 Jeffrey Chang. All rights reserved.
//

import Foundation

struct MockData {
    
    static func fetchMockResturants() -> [Resturant] {
        
        let cheapRest = Resturant(resturantMenu: fetchMockMenu(), resturantName: "cheap resturant", resturantNumber: 1)
        let midRest = Resturant(resturantMenu: fetchMockMenu(basePrice: 2.00), resturantName: "mid resturant", resturantNumber: 2)
        let expRest = Resturant(resturantMenu: fetchMockMenu(basePrice: 3.00), resturantName: "expensive resturant", resturantNumber: 3)
        return [cheapRest, midRest, expRest]
    }
    
    static func fetchMockMenu(basePrice: Double = 1.00) -> Menu {
        
        let appetizerDishes = [Dish(name: "app\(basePrice)", price: basePrice * 1.00), Dish(name: "app\(basePrice * 2)", price: basePrice * 2.00), Dish(name: "app\(basePrice * 3)", price: basePrice * 3.00)]
        let appetizerSubMenu = SubMenu(dishType: .appetizer, dishes: appetizerDishes)
        
        let lunchDishes = [Dish(name: "lunch\(basePrice)", price: basePrice * 1.00), Dish(name: "lunch\(basePrice * 2)", price: basePrice * 2.00), Dish(name: "lunch\(basePrice * 3)", price: basePrice * 3.00)]
        let lunchSubMenu = SubMenu(dishType: .lunch, dishes: lunchDishes)
        
        let dinnerDishes = [Dish(name: "dinner\(basePrice)", price: basePrice * 1.00), Dish(name: "dinner\(basePrice * 2)", price: basePrice * 2.00), Dish(name: "dinner\(basePrice * 3)", price: basePrice * 3.00)]
        let dinnerSubMenu = SubMenu(dishType: .dinner, dishes: dinnerDishes)
        let menu = Menu(subMenus: [appetizerSubMenu, lunchSubMenu, dinnerSubMenu])
        return menu
    }
}
