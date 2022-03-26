//
//  TabViewController.swift
//  JimeKadai7
//
//  Created by kitano hajime on 2022/03/26.
//

import UIKit

class TabViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = setupVC()
        UITabBar.appearance().backgroundColor = UIColor.secondarySystemBackground
    }

    private func setupVC() -> [UIViewController] {
        let addVC = CalcuratorViewController.setupCalcuratorVC(calcurator: Addition())
        addVC.tabBarItem.title = "Add"
        let subVC = CalcuratorViewController.setupCalcuratorVC(calcurator: Subtruction())
        subVC.tabBarItem.title = "Sub"
        return [addVC, subVC]
    }
}
