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
        
        let cheapRest = Resturant(resturantMenu: fetchMockMenu(), resturantName: "cheap resturant", resturantID: 1)
        let midRestMenu = fetchMockMenu(basePrice: 2.00)
        let midRest = Resturant(resturantMenu: midRestMenu, resturantName: "mid resturant", resturantID: 2)
        let expRestMenu = fetchMockMenu(basePrice: 3.00)
        let expRest = Resturant(resturantMenu: expRestMenu, resturantName: "expensive resturant", resturantID: 3)
        return [cheapRest, midRest, expRest]
    }
    
    static func fetchMockMenu(basePrice: Double = 1.00) -> Menu {
        
        let appDishOne = Dish(name: "app\(basePrice)", price: basePrice * 1.00)
        let appDishTwo = Dish(name: "app\(basePrice * 2)", price: basePrice * 2.00)
        let appDishThree = Dish(name: "app\(basePrice * 3)", price: basePrice * 3.00)
        let appetizerDishes = [appDishOne, appDishTwo, appDishThree]
        let appetizerSubMenu = SubMenu(dishType: .appetizer, dishes: appetizerDishes)
        
        let lunchDishOne = Dish(name: "lunch\(basePrice)", price: basePrice * 1.00)
        let lunchDishTwo = Dish(name: "lunch\(basePrice * 2)", price: basePrice * 2.00)
        let lunchDishThree = Dish(name: "lunch\(basePrice * 3)", price: basePrice * 3.00)
        let lunchDishes = [lunchDishOne, lunchDishTwo, lunchDishThree]
        let lunchSubMenu = SubMenu(dishType: .lunch, dishes: lunchDishes)
        
        let dinnerDishOne = Dish(name: "dinner\(basePrice)", price: basePrice * 1.00)
        let dinnerDishTwo = Dish(name: "dinner\(basePrice * 2)", price: basePrice * 2.00)
        let dinnerDishThree = Dish(name: "dinner\(basePrice * 3)", price: basePrice * 3.00)
        let dinnerDishes = [dinnerDishOne, dinnerDishTwo, dinnerDishThree]
        let dinnerSubMenu = SubMenu(dishType: .dinner, dishes: dinnerDishes)
        let menu = Menu(subMenus: [appetizerSubMenu, lunchSubMenu, dinnerSubMenu])
        return menu
    }
}
