//
//  HomeViewController.swift
//  Susugram
//
//  Created by Suelen Vicente on 2022-02-15.
//

import UIKit

class HomeViewController: UIViewController {

    @IBAction func touchUpInsideButton(_ sender: Any) {
        let testVC = HomeViewController()
        navigationController?.pushViewController(testVC, animated: true)
        navigationItem.title = "Some Title"
    }
    

}
