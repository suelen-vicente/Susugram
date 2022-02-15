//
//  ViewController.swift
//  Susugram
//
//  Created by Suelen Vicente on 2022-02-15.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginTextField: UITextField!

    @IBAction func touchUpInsideLoginButton(_ sender: Any) {
        guard let login = loginTextField.text,
              let password = passwordTextField.text else {
                  return
              }
        
        print("Username is \(login)")
        print("Password is \(password)")
        
        if validLogin(username: login, password: password){
            showMainScreen()
        }else{
            
            let alertController = UIAlertController(title: "Incorrect Login or Password", message: "Hey, that's the wrong information, silly!", preferredStyle: .alert)
 
            alertController.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            
            present(alertController, animated: true, completion: nil)
 
            print("Invalid login!")
        }
    }
    
    func validLogin(username: String, password: String) -> Bool{
        // this part is used to mock a database and server that I don't have yet.
        // this is just an example for studies
        return password == "123456"
    }
    
    func showMainScreen(){
        let mainVC = MainTabViewController()
        mainVC.modalPresentationStyle = .fullScreen
        present(mainVC, animated: true, completion: nil)
    }
    
    @IBAction func touchUpInsideRegisterButton(_ sender: Any) {
        let registerVC = RegisterViewController()
        registerVC.modalPresentationStyle = .fullScreen
        registerVC.delegate = self
        present(registerVC, animated: true, completion: nil)
    }
    
    
}

extension LoginViewController: RegisterDelegate{
    func didRegisterUser(user: User) {
        print(user.email)
    }
}

