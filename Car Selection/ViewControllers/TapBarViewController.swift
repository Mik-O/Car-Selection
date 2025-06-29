//
//  TapBarViewController.swift
//  Car Selection
//
//  Created by Таня Кожевникова on 29.06.2025.
//


import UIKit

class TapBarViewController: UITabBarController {
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: answers)
    }
     
    private func setupViewControllers(with answer: [Answer]) {
        let resultVC = viewControllers?.first as! ResultsViewController
        let listOfCarsVC = viewControllers?.last as! ListOfCarsViewController
        
        resultVC.answers = answer
        listOfCarsVC.answers = answer
        
        
    }
}
