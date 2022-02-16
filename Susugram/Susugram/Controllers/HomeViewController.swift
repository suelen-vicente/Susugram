//
//  HomeViewController.swift
//  Susugram
//
//  Created by Suelen Vicente on 2022-02-15.
//

import UIKit

class HomeViewController: UIViewController {

    @IBAction func touchUpInsideButton(_ sender: Any) {
        navigationController?.pushViewController(HomeViewController(), animated: true)
        
    }
    

}
