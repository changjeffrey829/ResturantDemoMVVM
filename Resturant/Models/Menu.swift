//
//  Menu.swift
//  Resturant
//
//  Created by Jeffrey Chang on 11/21/18.
//  Copyright © 2018 Jeffrey Chang. All rights reserved.
//

import Foundation

struct Menu {
    var subMenus = [SubMenu]()
    init(subMenus: [SubMenu]) {
        self.subMenus = subMenus
    }
}
