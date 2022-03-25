//
//  FirstViewController.swift
//  JimeKadai7
//
//  Created by kitano hajime on 2022/03/23.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak private var firstTextField: UITextField!
    @IBOutlet weak private var secondTextField: UITextField!
    @IBOutlet weak private var resultLabel: UILabel!

    private var textFields: [UITextField] {
        [firstTextField, secondTextField]
    }

    private let keyboardCloser = KeyboardCloser()

    override func viewDidLoad() {
        super.viewDidLoad()

        keyboardCloser.regist(view: view)

        textFields.forEach {
            $0.keyboardType = .numberPad
        }
    }

    @IBAction private func calcurateButtonTapped(_ sender: UIButton) {
        let values = textFields.compactMap { Int($0.text ?? "") }
        resultLabel.text = "\(values[0] - values[1])"
    }
}
