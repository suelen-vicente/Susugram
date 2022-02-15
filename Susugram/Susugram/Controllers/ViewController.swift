//
//  ViewController.swift
//  Susugram
//
//  Created by Suelen Vicente on 2022-02-15.
//

import UIKit

class ViewController: UIViewController {
    
    var isLoggedIn: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchUpInsideLoginButton(_ sender: Any) {
        guard let login = loginTextField.text,
              let password = passwordTextField.text else {
                  return
              }
        print("Username is \(login)")
        print("Password is \(password)")
        
        if validLogin(username: login, password: password){
            isLoggedIn = true
        }else{
            
            let alertController = UIAlertController(title: "Incorrect Login or Password", message: "Hey, that's the wrong information, silly!", preferredStyle: .alert)
 
            let okAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
            
            alertController.addAction(okAction)
            
            present(alertController, animated: true, completion: nil)
 
            print("Invalid login!")
        }
    }
    
    func validLogin(username: String, password: String) -> Bool{
        // this part is used to mock a database and server that I don't have yet.
        // this is just an example for studies
        return password == "123456"
    }
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginTextField: UITextField!
}

