//
//  ResturantTests.swift
//  ResturantTests
//
//  Created by Jeffrey Chang on 11/21/18.
//  Copyright © 2018 Jeffrey Chang. All rights reserved.
//

import XCTest
@testable import Resturant

class ResturantViewModelTests: XCTestCase {
    
    var sut: Resturant!
    
    override func setUp() {
        sut = MockData.fetchMockResturants()[0]
    }

    override func tearDown() {
        sut = nil
    }
    
    func testSubMenuCount() {
        setUp()
        let vm = ResturantViewModel(resturant: sut)
        XCTAssertEqual(sut.menus.count, vm.subMenuCount())
        tearDown()
    }
    
    func testDishCount() {
        setUp()
        let vm = ResturantViewModel(resturant: sut)
        XCTAssertEqual(sut.menus[0].dishes.count, vm.dishCount(section: 0))
        XCTAssertEqual(sut.menus[1].dishes.count, vm.dishCount(section: 1))
        XCTAssertEqual(sut.menus[2].dishes.count, vm.dishCount(section: 2))
        tearDown()
    }
    
    func testResturantName() {
        setUp()
        let vm = ResturantViewModel(resturant: sut)
        XCTAssertEqual(sut.resturantName, vm.currentResturantName())
        tearDown()
    }
    
    func testResturantID() {
        setUp()
        let vm = ResturantViewModel(resturant: sut)
        XCTAssertEqual(sut.resturantID, vm.currentResturantID())
        tearDown()
    }

}
