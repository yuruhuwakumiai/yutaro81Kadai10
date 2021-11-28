//
//  TableViewCell.swift
//  yutaro81Kadai10
//
//  Created by 橋元雄太郎 on 2021/11/25.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak private var label1: UILabel!
    @IBOutlet weak private var label2: UILabel!

    func configure(name: String, index: Int) {
        // ラベルのtextを表示する
        label1.text = name
        label2.text = "\(index + 1)番目の都道府県です"
        //cellの色を変える　contentView.backgroundColor
        let colors: [UIColor] = [
            UIColor(red: 1.0, green: 0.5, blue: 0.5, alpha: 1.0),
            UIColor(red: 0.5, green: 1.0, blue: 0.5, alpha: 1.0),
            UIColor(red: 0.5, green: 0.5, blue: 1.0, alpha: 1.0),
]
        contentView.backgroundColor = colors[index % colors.count]
    }
}
