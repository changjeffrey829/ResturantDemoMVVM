//
//  ResturantViewModel.swift
//  Resturant
//
//  Created by Jeffrey Chang on 11/27/18.
//  Copyright © 2018 Jeffrey Chang. All rights reserved.
//

import Foundation

struct ResturantViewModel {
    private var resturants = [Resturant]()
    
    init(resturants: [Resturant]) {
        self.resturants = resturants
    }
    func resturantCount() -> Int {
        return resturants.count
    }
    func resturantMenu(index: Int) -> Menu {
        return resturants[index].resturantMenu
    }
    
    func resturantName(index: Int) -> String {
        return resturants[index].resturantName
    }
}
