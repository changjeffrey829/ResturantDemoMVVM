//
//  NetworkManager.swift
//  Resturant
//
//  Created by Jeffrey Chang on 11/23/18.
//  Copyright © 2018 Jeffrey Chang. All rights reserved.
//

import Foundation


class NetworkManager {
    static let share = NetworkManager()
    func fetchData() -> [Resturant]? {
        let mockData = MockData.fetchMockResturants()
        return mockData
    }
    
    
}
