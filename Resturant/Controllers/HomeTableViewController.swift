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
    
    let homeViewModel: HomeViewModel
    
    init(homeViewModel: HomeViewModel) {
        self.homeViewModel = homeViewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(ResturantCell.self, forCellReuseIdentifier: HomeViewModel.cellID)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeViewModel.resturantCount()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        coordinator?.launchResturantVC(resturantViewModel: homeViewModel.resturantViewModelAt(index: indexPath.item))
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeViewModel.cellID, for: indexPath) as? ResturantCell
        cell?.resturantViewModel = homeViewModel.resturantViewModelAt(index: indexPath.row)
        return cell ?? UITableViewCell()
    }
}
