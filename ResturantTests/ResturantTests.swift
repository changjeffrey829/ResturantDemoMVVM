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
    
    var menu: Menu?
    
    override func setUp() {
        menu = MockData.fetchMockMenu()
    }

    override func tearDown() {
        menu = nil
    }
    
    func testSubMenuCount() {
        let resturants = MockData.fetchMockResturants()
        let restVMs = resturants.map {ResturantViewModel(resturant: $0)}
        XCTAssertEqual(resturants[0].resturantMenu.subMenus.count, restVMs[0].subMenuCount())
    }
    
    func testDishCount() {
        let resturants = MockData.fetchMockResturants()
        let restViewModels = resturants.map {ResturantViewModel(resturant: $0)}
        XCTAssertEqual(resturants[0].resturantMenu.subMenus[0].dishes.count, restViewModels[0].dishCount(section: 0))
        XCTAssertEqual(resturants[0].resturantMenu.subMenus[1].dishes.count, restViewModels[0].dishCount(section: 1))
        XCTAssertEqual(resturants[0].resturantMenu.subMenus[2].dishes.count, restViewModels[0].dishCount(section: 2))
    }
    
    func testDishName() {
        let resturants = MockData.fetchMockResturants()
        let restViewModels = resturants.map{ResturantViewModel(resturant: $0)}
        XCTAssertEqual(resturants[0].resturantMenu.subMenus[0].dishes[0].name, restViewModels[0].dishName(indexPath: IndexPath(item: 0, section: 0)))
        XCTAssertEqual(resturants[0].resturantMenu.subMenus[0].dishes[1].name, restViewModels[0].dishName(indexPath: IndexPath(item: 1, section: 0)))
        XCTAssertEqual(resturants[0].resturantMenu.subMenus[0].dishes[2].name, restViewModels[0].dishName(indexPath: IndexPath(item: 2, section: 0)))
    }
    
    func testDishPrice() {
        let resturants = MockData.fetchMockResturants()
        let restViewModels = resturants.map{ResturantViewModel(resturant: $0)}
        XCTAssertEqual("\(resturants[0].resturantMenu.subMenus[0].dishes[0].price)", restViewModels[0].dishPrice(indexPath: IndexPath(item: 0, section: 0)))
        XCTAssertEqual("\(resturants[0].resturantMenu.subMenus[0].dishes[1].price)", restViewModels[0].dishPrice(indexPath: IndexPath(item: 1, section: 0)))
        XCTAssertEqual("\(resturants[0].resturantMenu.subMenus[0].dishes[2].price)", restViewModels[0].dishPrice(indexPath: IndexPath(item: 2, section: 0)))
    }
    
    func testResturantName() {
        let resturants = MockData.fetchMockResturants()
        let restViewModels = resturants.map{ResturantViewModel(resturant: $0)}
        XCTAssertEqual(resturants[0].resturantName, restViewModels[0].currentResturantName())
        XCTAssertEqual(resturants[1].resturantName, restViewModels[1].currentResturantName())
        XCTAssertEqual(resturants[2].resturantName, restViewModels[2].currentResturantName())
    }
    
    func testResturantID() {
        let resturants = MockData.fetchMockResturants()
        let restViewModels = resturants.map{ResturantViewModel(resturant: $0)}
        XCTAssertEqual(resturants[0].resturantID, restViewModels[0].currentResturantID())
        XCTAssertEqual(resturants[1].resturantID, restViewModels[1].currentResturantID())
        XCTAssertEqual(resturants[2].resturantID, restViewModels[2].currentResturantID())
    }

}
