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

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpKeyboardGesture()
        firstTextField.setUpNumberKeyboardGesture()
        secondTextField.setUpNumberKeyboardGesture()
    }

    @IBAction private func calcurateButtonTapped(_ sender: UIButton) {
        let result = [firstTextField, secondTextField].compactMap { Int($0?.text ?? "") }
        resultLabel.text = "\(result[0]-result[1])"
    }
}
