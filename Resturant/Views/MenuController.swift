//
//  ViewController.swift
//  Resturant
//
//  Created by Jeffrey Chang on 11/21/18.
//  Copyright © 2018 Jeffrey Chang. All rights reserved.
//

import UIKit

class MenuController: UITableViewController {
    
    
    var menusViewModel: MenusViewModel?
    var cellID = "menuCellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(MenuTableCell.self, forCellReuseIdentifier: cellID)
        
    }
    
    func config(menu: Menu) {
        self.menusViewModel = MenusViewModel(menu: menu)
        tableView.reloadData()
    }
}

extension MenuController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return menusViewModel?.subMenusCount() ?? 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menusViewModel?.dishesCount(section: section) ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! MenuTableCell
        cell.textLabel?.text = menusViewModel?.selectDishText(indexPath: indexPath).name
        cell.detailTextLabel?.text = "\(menusViewModel?.selectDishText(indexPath: indexPath).price ?? 0)"
        return cell
    }
}
