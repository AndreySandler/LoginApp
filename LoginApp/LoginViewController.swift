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
    
    // MARK: - Private Properties
    private let user = "User"
    private let pass = "Pass"
    
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
        sender.tag == 0
        ? showAlert(title: "Really?", message: "Your name is \(user)")
        : showAlert(title: "Really?", message: "Your pass is \(pass)")
    }
    
    @IBAction func logiinButtonDidTapped() {
        guard (user, pass) == (userNameTextField.text, passwordTextField.text) else {
            showAlert(
                title: "Oops",
                message: "Wrong pass or username",
                textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "showGreetingVC", sender: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
