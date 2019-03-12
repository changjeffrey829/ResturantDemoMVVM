//
//  ViewController.swift
//  Resturant
//
//  Created by Jeffrey Chang on 11/21/18.
//  Copyright © 2018 Jeffrey Chang. All rights reserved.
//

import UIKit

class ResturantController: UITableViewController {
    
    var resturantViewModel: ResturantViewModel? {
        didSet {
            
        }
    }
    var cellID = "menuCellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(MenuTableCell.self, forCellReuseIdentifier: cellID)
        
    }
}

extension ResturantController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return resturantViewModel?.subMenuCount() ?? 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resturantViewModel?.dishCount(section: section) ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? MenuTableCell ?? UITableViewCell()
        cell.textLabel?.text = resturantViewModel?.dishName(indexPath: indexPath)
        cell.detailTextLabel?.text = resturantViewModel?.dishPrice(indexPath: indexPath)
        return cell
    }
}
