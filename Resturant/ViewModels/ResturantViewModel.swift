//
//  ResturantViewModel.swift
//  Resturant
//
//  Created by Jeffrey Chang on 11/27/18.
//  Copyright © 2018 Jeffrey Chang. All rights reserved.
//

import Foundation

struct ResturantViewModel {
    
    fileprivate var resturantMenu: Menu
    fileprivate let resturantName: String
    fileprivate let resturantID: Int
    init(resturant: Resturant) {
        self.resturantName = resturant.resturantName
        self.resturantMenu = resturant.resturantMenu
        self.resturantID = resturant.resturantID
    }
    
    func currentResturantName() -> String {
        return resturantName
    }
    
    func currentResturantID() -> Int {
        return resturantID
    }
    
    func subMenuCount() -> Int {
        return resturantMenu.subMenus.count
    }
    
    func dishCount(section: Int) -> Int {
        return resturantMenu.subMenus[section].dishes.count
    }
    
    func dishName(indexPath: IndexPath) -> String {
        return resturantMenu.subMenus[indexPath.section].dishes[indexPath.item].name
    }
    
    func dishPrice(indexPath: IndexPath) -> String {
        return "\(resturantMenu.subMenus[indexPath.section].dishes[indexPath.item].price)"
    }
}
