//
//  KeyboardCloser.swift
//  JimeKadai7
//
//  Created by akio0911 on 2022/03/25.
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
