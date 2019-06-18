//
//  ViewController.swift
//  Resturant
//
//  Created by Jeffrey Chang on 11/21/18.
//  Copyright © 2018 Jeffrey Chang. All rights reserved.
//

import UIKit

class ResturantController: UITableViewController {
    
    var resturantViewModel: ResturantViewModel
    
    init(resturantViewModel: ResturantViewModel) {
        self.resturantViewModel = resturantViewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(MenuTableCell.self, forCellReuseIdentifier: ResturantViewModel.cellID)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ResturantController {
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = ResturantHeaderView()
        headerView.headerViewModel = resturantViewModel.createHeaderViewModel(section: section)
        return headerView
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return resturantViewModel.subMenuCount()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resturantViewModel.dishCount(section: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ResturantViewModel.cellID, for: indexPath) as? MenuTableCell
        cell?.menuViewModel = resturantViewModel.createMenuViewModel(indexPath: indexPath)
        return cell ?? UITableViewCell()
    }
}
