//
//  CalcuratorMode.swift
//  JimeKadai7
//
//  Created by kitano hajime on 2022/03/26.
//

import Foundation
import UIKit

final class Addition: CalculatorIF {
    let backGroundColor: UIColor = UIColor.systemGreen
    func calurate(first: Int, second: Int) -> Int {
        first + second
    }
}

final class Subtruction: CalculatorIF {
    let backGroundColor: UIColor = UIColor.systemPink
    func calurate(first: Int, second: Int) -> Int {
        first - second
    }
}
