//
//  ViewController.swift
//  AppDojoTask14
//
//  Created by Naoyuki Kan on 2021/06/13.
//

import UIKit

struct CheckItem {
    var name: String
    var isChecked: Bool
}

class ViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    private let tableItems: [CheckItem] = [
        CheckItem(name: "りんご", isChecked: false),
        CheckItem(name: "みかん", isChecked: true),
        CheckItem(name: "バナナ", isChecked: false),
        CheckItem(name: "パイナップル", isChecked: true)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView,
               numberOfRowsInSection section: Int) -> Int {
        return tableItems.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CheckItemCell

        cell.configure(checkItem: tableItems[indexPath.row])

        return cell
    }
}
