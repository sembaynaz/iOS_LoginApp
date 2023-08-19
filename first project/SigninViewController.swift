//
//  SecondViewController.swift
//  first project
//
//  Created by Nazerke Sembay on 19.08.2023.
//

import UIKit

class SigninViewController: UIViewController {
    
    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var viewTopToSuperview: NSLayoutConstraint!
    @IBOutlet weak var viewTopConstraints: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        hideKeyboardWhenTappedAround()
    }
    
    @IBAction func signinTouched(_ sender: Any) {
        print(passwordTextField.text!)
        print(usernameTextField.text!)
    }
    
    func configureView() {
        signinButton.layer.cornerRadius = 30
        passwordTextField.layer.cornerRadius = 30
        passwordTextField.clipsToBounds = true
        usernameTextField.layer.cornerRadius = 30
        usernameTextField.clipsToBounds = true
    }
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        if size.width > size.height {
            viewTopConstraints.priority = .defaultLow
            viewTopToSuperview.priority = .defaultHigh
        } else {
            viewTopConstraints.constant = 20
            viewTopConstraints.priority = .defaultHigh
            viewTopToSuperview.priority = .defaultLow
        }
        
        coordinator.animate(alongsideTransition: { context in
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
}
