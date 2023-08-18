//
//  ViewController.swift
//  first project
//
//  Created by Nazerke Sembay on 17.08.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    @IBAction func usernameTFBegin(_ sender: Any) {
        usernameTextField.text = ""
    }
    @IBAction func passwordTFBegin(_ sender: Any) {
        passwordTextField.text = ""
    }
    
    
    func configureView() {
        signinButton.layer.cornerRadius = 30
        passwordTextField.layer.cornerRadius = 30
        passwordTextField.clipsToBounds = true
        usernameTextField.layer.cornerRadius = 30
        usernameTextField.clipsToBounds = true
    }
    
    @IBAction func signinTouched(_ sender: Any) {
        print(passwordTextField.text!)
        print(usernameTextField.text!)
    }
}

