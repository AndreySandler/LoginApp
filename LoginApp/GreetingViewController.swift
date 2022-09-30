//
//  GreetingViewController.swift
//  LoginApp
//
//  Created by Andrey Sandler on 30.09.2022.
//

import UIKit

class GreetingViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var greetingLabel: UILabel!
    
    // MARK: - Public properties
    var greeting: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        greetingLabel.text = "Welcome, " + greeting
    }
    
}
