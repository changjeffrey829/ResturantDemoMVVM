//
//  DishTests.swift
//  ResturantTests
//
//  Created by Jeffrey Chang on 3/19/19.
//  Copyright © 2019 Jeffrey Chang. All rights reserved.
//

import XCTest
@testable import Resturant

class DishTests: XCTestCase {
    
    var sut: Dish!

    override func setUp() {
        sut = Dish(name: "someDish", price: 1.00)
    }

    override func tearDown() {
        sut = nil
    }
}
