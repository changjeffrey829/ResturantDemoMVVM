//
//  ResturantTests.swift
//  ResturantTests
//
//  Created by Jeffrey Chang on 11/21/18.
//  Copyright © 2018 Jeffrey Chang. All rights reserved.
//

import XCTest
@testable import Resturant

class ResturantTests: XCTestCase {
    
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
        XCTAssertEqual(sut.resturantMenu.count, vm.subMenuCount())
        tearDown()
    }
    
    func testDishCount() {
        setUp()
        let vm = ResturantViewModel(resturant: sut)
        XCTAssertEqual(sut.resturantMenu[0].dishes.count, vm.dishCount(section: 0))
        XCTAssertEqual(sut.resturantMenu[1].dishes.count, vm.dishCount(section: 1))
        XCTAssertEqual(sut.resturantMenu[2].dishes.count, vm.dishCount(section: 2))
        tearDown()
    }
    
    func testDishName() {
        setUp()
        let vm = ResturantViewModel(resturant: sut)
        XCTAssertEqual(sut.resturantMenu[0].dishes[0].name, vm.dishName(indexPath: IndexPath(item: 0, section: 0)))
        XCTAssertEqual(sut.resturantMenu[0].dishes[1].name, vm.dishName(indexPath: IndexPath(item: 1, section: 0)))
        XCTAssertEqual(sut.resturantMenu[0].dishes[2].name, vm.dishName(indexPath: IndexPath(item: 2, section: 0)))
        tearDown()
    }
    
    func testDishPrice() {
        setUp()
        let vm = ResturantViewModel(resturant: sut)
        XCTAssertEqual("\(sut.resturantMenu[0].dishes[0].price)", vm.dishPrice(indexPath: IndexPath(item: 0, section: 0)))
        XCTAssertEqual("\(sut.resturantMenu[0].dishes[1].price)", vm.dishPrice(indexPath: IndexPath(item: 1, section: 0)))
        XCTAssertEqual("\(sut.resturantMenu[0].dishes[2].price)", vm.dishPrice(indexPath: IndexPath(item: 2, section: 0)))
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
