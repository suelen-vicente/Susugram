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
    
    var delegate: RegisterDelegate?
    
    @IBAction func touchUpInsideRegisterButton(_ sender: Any) {
        guard let username = usernameTextField.text,
              let password = passwordTextField.text,
              username != "",
              password != "" else{
                  return
              }
        
        let newUser = User(email: username, password: password)
        
        dismiss(animated: true, completion: {
            self.delegate?.didRegisterUser(user: newUser)
        })
    }
}

protocol RegisterDelegate{
    func didRegisterUser(user: User)
}
