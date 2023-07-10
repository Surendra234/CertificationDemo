//
//  TabbarController.swift
//  CertificationDemo
//
//  Created by Surendra Mahawar on 07/07/23.
//

import UIKit

class TabbarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UITabBar.appearance().backgroundColor = .white
        self.tabBar.isTranslucent = false
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.systemBlue], for:.selected)
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: SearchViewController())
        let vc3 = UINavigationController(rootViewController: LikeViewController())
        let vc4 = UINavigationController(rootViewController: ProfileViewController())
        
        vc1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house.fill"),tag: 0)
        vc2.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        vc3.tabBarItem = UITabBarItem(title: "Like", image: UIImage(systemName: "heart")?.withTintColor(.black), tag: 2)
        vc4.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.circle"), tag: 3)
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }
}
