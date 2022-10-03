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
    
    // MARK: - Private Properties
    private let username = "User"
    private let password = "Pass"
    
    // MARK: - Override Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        
        greetingVC.greeting = userNameTextField.text
    }
    
    // MARK: - IBAction
    @IBAction func forgotButtonDidTapped(_ sender: UIButton) {
        switch sender {
        case forgotUsernameButton:
            showAlert(withTitle: "Really?", andMessage: "Your name is \(username)")
        default:
            showAlert(withTitle: "Really?", andMessage: "Your pass is \(password)")
        }
    }
    
    @IBAction func logiinButtonDidTapped() {
        if (username, password) != (userNameTextField.text, passwordTextField.text) {
            showAlert(withTitle: "Oops", andMessage: "Wrong pass or username")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
