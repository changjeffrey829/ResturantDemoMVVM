//
//  MenuViewModel.swift
//  Resturant
//
//  Created by Jeffrey Chang on 6/17/19.
//  Copyright © 2019 Jeffrey Chang. All rights reserved.
//

import Foundation

class MenuViewModel {
    
    private (set) var dishName: String
    private (set) var dishPrice: String
    
    init(dishName: String, dishPrice: String) {
        self.dishName = dishName
        self.dishPrice = dishPrice
    }
}
