//
//  ResturantsTableViewController.swift
//  Resturant
//
//  Created by Jeffrey Chang on 11/27/18.
//  Copyright © 2018 Jeffrey Chang. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    var coordinator: MainCoordinator?
    
    var resturantViewModels = [ResturantViewModel]()
    
    var cellID = "restCellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        fetchData()
    }
    
    private func fetchData() {
        guard let resturants = NetworkManager.share.fetchData() else {return}
        resturantViewModels = resturants.map {return ResturantViewModel(resturant: $0)}
    }
}

extension HomeTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resturantViewModels.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        coordinator?.launchResturantVC(viewModel: resturantViewModels[indexPath.item])
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.text = resturantViewModels[indexPath.item].currentResturantName()
        return cell
    }
}
