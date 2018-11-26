//
//  ViewController.swift
//  Resturant
//
//  Created by Jeffrey Chang on 11/21/18.
//  Copyright © 2018 Jeffrey Chang. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    
    var menusViewModel: MenusViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
        fetchData()
    }
    
    
    private func fetchData() {
        guard let menu = NetworkManager.share.fetchData() else {return}
        self.menusViewModel = MenusViewModel(menu: menu)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return menusViewModel?.subMenusCount() ?? 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menusViewModel?.dishesCount(section: section) ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        cell.backgroundColor = .blue
        cell.textLabel?.text = menusViewModel?.selectDishText(indexPath: indexPath).name
        return cell
    }
    

}

