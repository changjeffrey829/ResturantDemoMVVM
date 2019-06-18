//
//  HomeViewModel.swift
//  Resturant
//
//  Created by Jeffrey Chang on 6/17/19.
//  Copyright © 2019 Jeffrey Chang. All rights reserved.
//

import Foundation

class HomeViewModel {
    static let cellID = "homeCellID"
    
    private var resturantViewModels = [ResturantViewModel]()
    private let networkService: NetworkManager
    
    init(networkService: NetworkManager = NetworkManager.share) {
        self.networkService = networkService
        fetchData()
    }
    
    func fetchData() {
        guard let resturants = NetworkManager.share.fetchData() else {return}
        resturantViewModels = resturants.map {return ResturantViewModel(resturant: $0)}
    }
    
    func resturantViewModelAt(index: Int) -> ResturantViewModel {
        return resturantViewModels[index]
    }
    
    func resturantCount() -> Int {
        return resturantViewModels.count
    }
}
