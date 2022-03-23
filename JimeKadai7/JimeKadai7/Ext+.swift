//
//  ViewController+Ext.swift
//  JimeKadai7
//
//  Created by kitano hajime on 2022/03/23.
//

import Foundation
import UIKit

extension UIViewController {
    func setUpKeyboardGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapView))
        view.addGestureRecognizer(tapGesture)
    }
    @objc private func didTapView() {
        view.endEditing(true)
    }
}

extension UITextField {
    func setUpNumberKeyboardGesture() {
        self.keyboardType = .numberPad
    }
}
