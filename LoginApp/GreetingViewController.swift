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
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [#colorLiteral(red: 0.1764705926, green: 0.6370038643, blue: 0.5607843399, alpha: 1).cgColor, #colorLiteral(red: 0.5507852435, green: 0.04096826166, blue: 0.4525508881, alpha: 1).cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        greetingLabel.text = "Welcome, \(greeting ?? "")!"
    }
}
