//
//  CheckItemCell.swift
//  AppDojoTask14
//
//  Created by Naoyuki Kan on 2021/06/16.
//

import UIKit

class CheckItemCell: UITableViewCell {
    @IBOutlet private weak var checkImageView: UIImageView!
    @IBOutlet private weak var label: UILabel!

    func configure(checkItem: CheckItem) {
        label.text = checkItem.name
        checkImageView.image = checkItem.isChecked ? UIImage(named: "checkImage"): nil
    }
}
