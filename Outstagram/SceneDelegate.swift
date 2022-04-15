//
//  SceneDelegate.swift
//  Outstagram
//
//  Created by 정은경 on 2022/04/13.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.backgroundColor = .systemBackground
        window?.rootViewController = LoginViewController()
        window?.tintColor = .label
        window?.makeKeyAndVisible()
    }
}

