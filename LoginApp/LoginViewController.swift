//
//  ViewController.swift
//  LoginApp
//
//  Created by Andrey Sandler on 30.09.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        
        greetingVC.greeting = userNameTextField.text
    }
    
    // MARK: - IBAction
    @IBAction func forgotButtonDidTapped(_ sender: UIButton) {
        switch sender {
        case forgotUsernameButton:
            showAlert(withTitle: "Oops", andMessage: "Your name is User")
        default:
            showAlert(withTitle: "Oops", andMessage: "Your pass is Password")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        
    }
}

// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

