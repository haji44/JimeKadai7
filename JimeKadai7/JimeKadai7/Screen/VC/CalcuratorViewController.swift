//
//  CalcuratorViewController.swift
//  JimeKadai7
//
//  Created by kitano hajime on 2022/03/26.
//

import UIKit

class CalcuratorViewController: UIViewController {

    @IBOutlet weak private var firstTextField: UITextField!
    @IBOutlet weak private var secondTextField: UITextField!
    @IBOutlet weak private var resultLabel: UILabel!

    private var calcurator: CalculatorIF?
    private let keyboardCloser = KeyboardCloser()
    private var textFields: [UITextField] {
        [firstTextField, secondTextField]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = calcurator?.backGroundColor

        keyboardCloser.regist(view: view)

        textFields.forEach {
            $0.keyboardType = .numberPad
        }
    }

    @IBAction private func didTapCalcurateButton(_ sender: UIButton) {
        let result = textFields.map { Int($0.text ?? "") ?? 0 }

        guard let calcurator = calcurator else { return }
        let value = calcurator.calurate(first: result[0], second: result[1])

        resultLabel.text = "\(value)"
    }
    static func setupCalcuratorVC(calcurator: CalculatorIF) -> CalcuratorViewController {
        let storyBoard = UIStoryboard(name: "Calcurator", bundle: nil)
        guard let viewController = storyBoard.instantiateViewController(withIdentifier: "CalcuratorView")
                as? CalcuratorViewController else { fatalError("ViewController not found") }

        viewController.calcurator = calcurator
        return viewController
    }
}
