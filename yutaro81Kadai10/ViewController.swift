//
//  ViewController.swift
//  yutaro81Kadai10
//
//  Created by 橋元雄太郎 on 2021/11/19.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    private var count = 0
    // 配列の行数、コンマの位置
    private let placeData = ["北海道", "青森県", "岩手県", "宮城県", "秋田県",
                             "山形県", "福島県", "茨城県", "栃木県", "群馬県",
                             "埼玉県", "千葉県", "東京都", "神奈川県", "新潟県",
                             "富山県", "石川県", "福井県", "山梨県", "長野県",
                             "岐阜県", "静岡県", "愛知県", "三重県", "滋賀県",
                             "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県",
                             "鳥取県", "島根県", "岡山県", "広島県", "山口県",
                             "徳島県", "香川県", "愛媛県", "高知県", "福岡県",
                             "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県",
                             "鹿児島県", "沖縄県"]

    // tableviewはセクションとrowで構成されている　セクションの中にrowという行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeData.count
    }
    // 行数が20と決まったとき20回呼ばれる　表示する内容を返す
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // identifier という空の変数を作成して
        var identifier = ""
        if indexPath.row % 3 == 1 {
            identifier = "Cell1"
        }
        if indexPath.row % 3 == 2 {
            identifier = "Cell2"
        }
        if indexPath.row % 3 == 0 {
            identifier = "Cell3"
        }
let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)// 変数identifierを設定
if let tableLabel1 = cell.contentView.viewWithTag(1)as? UILabel { tableLabel1.text = placeData[indexPath.row] }
        // indexPath.rowでその行数の番号が取得できる
if let tableLabel2 = cell.contentView.viewWithTag(2)as? UILabel { tableLabel2.text = "\(indexPath.row + 1)番目の都道府県です" }
        return cell
    }
}
