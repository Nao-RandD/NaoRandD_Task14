//
//  AddViewController.swift
//  AppDojoTask14
//
//  Created by Naoyuki Kan on 2021/06/29.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet private weak var addTextField: UITextField!

    var name: String {
        addTextField.text ?? ""
    }
}
