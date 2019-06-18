//
//  ResturantHeaderView.swift
//  Resturant
//
//  Created by Jeffrey Chang on 3/20/19.
//  Copyright © 2019 Jeffrey Chang. All rights reserved.
//

import UIKit

class ResturantHeaderView: UIView {
    
    var headerViewModel: HeaderViewModel? {
        didSet {
            label.text = headerViewModel?.dishTypeString
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(label)
        label.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
        label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).isActive = true
        label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
    }
    
    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "FoodType"
        label.layer.borderWidth = 1
        label.layer.cornerRadius = 5
        return label
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
