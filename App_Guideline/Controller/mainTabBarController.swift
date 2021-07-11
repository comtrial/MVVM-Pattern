//
//  mainTabBarController.swift
//  App_Guideline
//
//  Created by 최승원 on 2021/07/11.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("MainTabBarController  - viewDidLoad() called")
        
        let firstNC = UINavigationController.init(rootViewController: MyViewController())
        let secondNC = UINavigationController.init(rootViewController: MyViewController(title: "두번째", bgColor: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)))
        let thirdNC = UINavigationController.init(rootViewController: MyViewController(title: "세번째", bgColor: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)))
        let forthNC = UINavigationController.init(rootViewController: MyViewController(title: "네번째", bgColor: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
        let fifthNC = UINavigationController.init(rootViewController: MyViewController(title: "다서ㅛ번째", bgColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
        
        self.viewControllers = [firstNC, secondNC, thirdNC, forthNC, fifthNC]
        
        let firstTabBarItem = UITabBarItem(title: "첫번째", image: UIImage(systemName: "house.fill"), tag: 0)
        let secondTabBarItem = UITabBarItem(title: "두번째", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        let thirdTabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "square.and.arrow.up.fill"), tag: 2)
        let forthTabBarItem = UITabBarItem(title: "네번째", image: UIImage(systemName: "bell.badge.fill"), tag: 3)
        let fifthTabBarItem = UITabBarItem(title: "다섯번째", image: UIImage(systemName: "person.circle.fill"), tag: 4)
        
        firstNC.tabBarItem = firstTabBarItem
        secondNC.tabBarItem = secondTabBarItem
        thirdNC.tabBarItem = thirdTabBarItem
        forthNC.tabBarItem = forthTabBarItem
        fifthNC.tabBarItem = fifthTabBarItem
    }
}
