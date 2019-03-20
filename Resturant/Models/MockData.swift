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
    
    static func fetchMenu(dishType: DishType, basePrice: Double) -> Menu {
        let dishName: String
        switch dishType {
        case .breakfast:
            dishName = dishType.rawValue
        case .lunch:
            dishName = dishType.rawValue
        case .dinner:
            dishName = dishType.rawValue
        case .appetizer:
            dishName = dishType.rawValue
        case .dessert:
            dishName = dishType.rawValue
        }
        let appDishOne = Dish(name: "\(dishName) \(basePrice)", price: basePrice * 1.00)
        let appDishTwo = Dish(name: "\(dishName) \(basePrice * 2)", price: basePrice * 2.00)
        let appDishThree = Dish(name: "\(dishName) \(basePrice * 3)", price: basePrice * 3.00)
        return Menu(dishType: dishType, dishes: [appDishOne, appDishTwo, appDishThree])
    }
    
    static func fetchMockMenu(basePrice: Double = 1.00) -> [Menu] {
        
        let appMenu = fetchMenu(dishType: .appetizer, basePrice: basePrice)
        let lunchMenu = fetchMenu(dishType: .lunch, basePrice: basePrice)
        let dinnerMenu = fetchMenu(dishType: .dinner, basePrice: basePrice)
        
        return [appMenu, lunchMenu, dinnerMenu]
    }
}
