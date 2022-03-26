//
//  SceneDelegate.swift
//  JimeKadai7
//
//  Created by kitano hajime on 2022/03/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window?.windowScene = windowScene
        window?.rootViewController = TabViewController()
        window?.makeKeyAndVisible()
    }
}
