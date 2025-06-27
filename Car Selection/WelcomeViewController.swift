//
//  WelcomeViewController.swift
//  Car Selection
//
//  Created by Таня Кожевникова on 27.06.2025.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: -IB Outlets
    @IBOutlet var welcomeLabel: UILabel!
    
    // MARK: - Public properties
    var user: User!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.username)"
        
    }
}

