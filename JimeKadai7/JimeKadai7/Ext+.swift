//
//  ViewController+Ext.swift
//  JimeKadai7
//
//  Created by kitano hajime on 2022/03/23.
//

import Foundation
import UIKit

class KeyboardCloser {
    private var targetView: UIView?

    func regist(view: UIView) {
        targetView = view

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapView))
        view.addGestureRecognizer(tapGesture)
    }

    @objc private func didTapView() {
        targetView?.endEditing(true)
    }
}
