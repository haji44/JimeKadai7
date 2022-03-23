//
//  ViewController.swift
//  JimeKadai7
//
//  Created by kitano hajime on 2022/03/23.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak private var firstTextField: UITextField!
    @IBOutlet weak private var secondTextField: UITextField!
    @IBOutlet weak private var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpKeyboardGesture()
        firstTextField.setUpNumberKeyboardGesture()
        secondTextField.setUpNumberKeyboardGesture()
    }

    @IBAction private func calcurateButtonTapped(_ sender: UIButton) {
        let result = [firstTextField, secondTextField].compactMap { Int($0?.text ?? "") }
            .reduce(0, +)
        resultLabel.text = "\(result)"
    }
}
