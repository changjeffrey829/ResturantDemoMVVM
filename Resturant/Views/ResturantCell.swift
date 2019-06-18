//
//  ResturantCell.swift
//  Resturant
//
//  Created by Jeffrey Chang on 6/17/19.
//  Copyright © 2019 Jeffrey Chang. All rights reserved.
//

import UIKit

class ResturantCell: UITableViewCell {
    
    var resturantViewModel: ResturantViewModel? {
        didSet {
            guard let vm = resturantViewModel else {return}
            textLabel?.text = vm.currentResturantName()
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
