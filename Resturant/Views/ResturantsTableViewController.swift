//
//  ResturantsTableViewController.swift
//  Resturant
//
//  Created by Jeffrey Chang on 11/27/18.
//  Copyright © 2018 Jeffrey Chang. All rights reserved.
//

import UIKit

class ResturantsViewController: UITableViewController {
    
    var resturantViewModel: ResturantViewModel?
    var cellID = "restCellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        fetchData()
    }
    
    private func fetchData() {
        guard let resturants = NetworkManager.share.fetchData() else {return}
        resturantViewModel = ResturantViewModel(resturants: resturants)
        
    }
}

extension ResturantsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resturantViewModel?.resturantCount() ?? 0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let restVM = resturantViewModel else {return}
        let vc = MenuController()
        vc.config(menu: restVM.resturantMenu(index: indexPath.row))
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.text = resturantViewModel?.resturantName(index: indexPath.row)
        return cell
    }
}
