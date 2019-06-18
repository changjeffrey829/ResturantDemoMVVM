//
//  ResturantViewModel.swift
//  Resturant
//
//  Created by Jeffrey Chang on 11/27/18.
//  Copyright © 2018 Jeffrey Chang. All rights reserved.
//

import Foundation

struct ResturantViewModel {
    
    static var cellID = "menuCellID"
    
    private var menus: [Menu]
    private let resturantName: String
    private let resturantID: Int
    
    init(resturant: Resturant) {
        self.resturantName = resturant.resturantName
        self.menus = resturant.menus
        self.resturantID = resturant.resturantID
    }
    
    func createMenuViewModel(indexPath: IndexPath) -> MenuViewModel {
        let name = menus[indexPath.section].dishes[indexPath.item].name
        let price = "\(menus[indexPath.section].dishes[indexPath.item].price)"
        return MenuViewModel(dishName: name, dishPrice: price)
    }
    
    func currentResturantName() -> String {
        return resturantName
    }
    
    func currentResturantID() -> Int {
        return resturantID
    }
    
    func subMenuCount() -> Int {
        return menus.count
    }
    
    func createHeaderViewModel(section: Int) -> HeaderViewModel {
        let dishType = menus[section].dishType
        return HeaderViewModel(dishTypeString: dishType.rawValue)
    }
    
    func dishType(section: Int) -> DishType {
        return menus[section].dishType
    }
    
    func dishCount(section: Int) -> Int {
        return menus[section].dishes.count
    }
}
