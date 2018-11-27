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
    
    func testResturantCount() {
        let resturants = MockData.fetchMockResturants()
        let restViewModel = ResturantViewModel(resturants: resturants)
        XCTAssertEqual(resturants.count, restViewModel.resturantCount())
    }
    
    func testSubMenuCount() {
        guard let menu = menu else {
            XCTAssert(false)
            return}
        let menuViewModel = MenusViewModel(menu: menu)
        XCTAssertEqual(menu.subMenus.count, 3)
        XCTAssertEqual(menu.subMenus.count, menuViewModel.subMenusCount())
    }
    
    func testDishCount() {
        guard let menu = menu else {
            XCTAssert(false)
            return}
        let menuViewModel = MenusViewModel(menu: menu)
        XCTAssertEqual(menu.subMenus[0].dishes.count, 3)
        XCTAssertEqual(menu.subMenus[0].dishes.count, menuViewModel.dishesCount(section: 0))
        XCTAssertEqual(menu.subMenus[1].dishes.count, menuViewModel.dishesCount(section: 1))
        XCTAssertEqual(menu.subMenus[2].dishes.count, menuViewModel.dishesCount(section: 2))
    }
    
    func testSelectDishText() {
        guard let menu = menu else {
            XCTAssert(false)
            return}
        let menuViewModel = MenusViewModel(menu: menu)
        let indexPath = IndexPath(row: 0, section: 0)
        let dish = menu.subMenus[indexPath.section].dishes[indexPath.row]
        XCTAssertEqual(dish.name, menuViewModel.selectDishText(indexPath: indexPath).name)
        XCTAssertEqual(dish.price, menuViewModel.selectDishText(indexPath: indexPath).price)
    }

}
