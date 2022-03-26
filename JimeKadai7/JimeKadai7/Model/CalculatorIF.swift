//
//  CalculatorIF.swift
//  JimeKadai7
//
//  Created by kitano hajime on 2022/03/26.
//

import Foundation
import UIKit

protocol CalculatorIF: AnyObject {
    var backGroundColor: UIColor { get }
    func calurate(first: Int, second: Int) -> Int
}
