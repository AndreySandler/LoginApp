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
    
    // MARK: - Public Properties
    var greeting: String!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        greetingLabel.text = "Welcome, " + (greeting ?? "")
    }
    
}
