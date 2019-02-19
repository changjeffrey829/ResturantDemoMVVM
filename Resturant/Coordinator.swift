//
//  Coordinator.swift
//  Resturant
//
//  Created by Jeffrey Chang on 2/19/19.
//  Copyright © 2019 Jeffrey Chang. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = HomeTableViewController()
        navigationController.pushViewController(vc, animated: false)
    }
    
}
