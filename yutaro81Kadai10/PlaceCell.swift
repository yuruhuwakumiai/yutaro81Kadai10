//
//  PlaceCell.swift
//  yutaro81Kadai10
//
//  Created by akio0911 on 2021/11/24.
//

import UIKit

class PlaceCell: UITableViewCell {
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var indexLabel: UILabel!
    
    func configure(name: String, index: Int) {
        nameLabel.text = name
        indexLabel.text = "\(index + 1)番目の都道府県です"
        
        let colors: [UIColor] = [
            UIColor(red: 1.0, green: 0.5, blue: 0.5, alpha: 1.0),
            UIColor(red: 0.5, green: 1.0, blue: 0.5, alpha: 1.0),
            UIColor(red: 0.5, green: 0.5, blue: 1.0, alpha: 1.0),
        ]
        
        contentView.backgroundColor = colors[index % colors.count]
    }
}
