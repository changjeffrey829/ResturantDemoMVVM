//
//  DishViewModel.swift
//  Resturant
//
//  Created by Jeffrey Chang on 11/22/18.
//  Copyright © 2018 Jeffrey Chang. All rights reserved.
//

import Foundation

struct MenusViewModel {
    private let menu: Menu
    
    init(menu: Menu) {
        self.menu = menu
    }
    
    func subMenusCount() -> Int {
        return menu.subMenus.count
    }
    
    func dishesCount(section: Int) -> Int {
        let subMenu = menu.subMenus[section]
        return subMenu.dishes.count
    }
    
    func selectDishText(indexPath: IndexPath) -> (name: String, price: Double) {
        let dish = menu.subMenus[indexPath.section].dishes[indexPath.row]
        return (dish.name, dish.price)
    }
}
