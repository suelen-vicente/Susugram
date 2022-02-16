//
//  MainViewController.swift
//  Susugram
//
//  Created by Suelen Vicente on 2022-02-16.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: .add, tag: 0)

        let searchVC = UINavigationController(rootViewController: SearchViewController())
        searchVC.tabBarItem = UITabBarItem(title: "Search", image: .remove, tag: 1)

        let likesVC = UINavigationController(rootViewController: LikesViewController())
        likesVC.tabBarItem = UITabBarItem(title: "Likes", image: .actions, tag: 2)

        let settingsVC = UINavigationController(rootViewController: SettingsViewController())
        settingsVC.tabBarItem = UITabBarItem(title: "Settings", image: .checkmark, tag: 3)

        viewControllers = [homeVC, searchVC, likesVC, settingsVC]
    }

}
