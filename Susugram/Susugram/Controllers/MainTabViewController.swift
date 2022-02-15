//
//  MainTabViewController.swift
//  Susugram
//
//  Created by Suelen Vicente on 2022-02-15.
//

import UIKit

class MainTabViewController: UITabBarController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let vc1 = UIViewController()
        vc1.tabBarItem = UITabBarItem(title: "Home", image: .add, tag: 0)
        
        let vc2 = UIViewController()
        vc1.tabBarItem = UITabBarItem(title: "Search", image: .remove, tag: 1)
        
        let vc3 = UIViewController()
        vc1.tabBarItem = UITabBarItem(title: "Likes", image: .actions, tag: 2)
        
        let vc4 = UIViewController()
        vc1.tabBarItem = UITabBarItem(title: "Settings", image: .checkmark, tag: 3)
        
        viewControllers = [vc1, vc2, vc3, vc4]
    }

}
