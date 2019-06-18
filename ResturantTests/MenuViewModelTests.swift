//
//  MenuViewModel.swift
//  ResturantTests
//
//  Created by Jeffrey Chang on 6/17/19.
//  Copyright © 2019 Jeffrey Chang. All rights reserved.
//

import XCTest
@testable import Resturant

class MenuViewModelTests: XCTestCase {

    func testDishName() {
        let mock = "test 1"
        let vm = MenuViewModel(dishName: mock, dishPrice: "")
        XCTAssertEqual(mock, vm.dishName, "dishName should match")
    }
    
    func testDishPrice() {
        let mock = "99"
        let vm = MenuViewModel(dishName: "", dishPrice: mock)
        XCTAssertEqual(mock, vm.dishPrice, "dishPrice should match")
    }
}
