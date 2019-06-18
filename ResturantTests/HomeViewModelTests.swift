//
//  HomeViewModel.swift
//  ResturantTests
//
//  Created by Jeffrey Chang on 6/17/19.
//  Copyright © 2019 Jeffrey Chang. All rights reserved.
//

import XCTest
@testable import Resturant

class HomeViewModelTests: XCTestCase {
    
    func testCorrectResturantViewModelAtIndex() {
        let viewModel = HomeViewModel()
        let sut = viewModel.resturantViewModelAt(index: 0)
        XCTAssertEqual(1, sut.currentResturantID())
    }
    
    func testCorrectResturantCount() {
        let sut = HomeViewModel()
        let count = sut.resturantCount()
        XCTAssertEqual(3, count)
    }
}
