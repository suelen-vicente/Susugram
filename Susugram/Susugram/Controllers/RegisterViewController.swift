//
//  RegisterViewController.swift
//  Susugram
//
//  Created by Suelen Vicente on 2022-02-15.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    @IBAction func touchUpInsideRegisterButton(_ sender: Any) {
        guard let username = usernameTextField.text,
              let password = passwordTextField.text,
              username != "",
              password != "" else{
                  return
              }
        
        //something will be done here!
        let newUser = User(email: username, password: password)
        
        let mainVC = MainViewController()
        mainVC.modalPresentationStyle = .fullScreen
        present(mainVC, animated: true, completion: nil)
    }
}
