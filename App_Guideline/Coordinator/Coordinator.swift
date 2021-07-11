//
//  Coordinator.swift
//  App_Guideline
//
//  Created by 최승원 on 2021/07/11.
//

import UIKit

protocol Coordinator {
    
    var navigationController: UINavigationController? { get set}
    func start()
//    func start(window: UIWindow, rootViewController: UIViewController) {
//        let rootViewController = rootViewController
//
//        window.rootViewController = rootViewController
//        window.makeKeyAndVisible()
//
//    }
}
