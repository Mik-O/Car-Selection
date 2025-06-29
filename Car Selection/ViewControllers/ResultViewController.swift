//
//  ResultViewController.swift
//  Car Selection
//
//  Created by Таня Кожевникова on 29.06.2025.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet var countryOfCarsResultLabel: UILabel!
    @IBOutlet var descriptionSelectionOfCarResultLabel: UILabel!
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        updateResult()
        
    }
    
}


//  MARK: - Private Methods
extension ResultsViewController {
    private func updateResult() {
        
        var frequencyOfCountry: [CountryOfOrigin: Int] = [:]
        let сountrys = answers.map { $0.type }
        
        for country in сountrys {
            if let countryTypeCount = frequencyOfCountry[country] {
                frequencyOfCountry.updateValue(countryTypeCount + 1, forKey: country)
            } else {
                frequencyOfCountry[country] = 1
            }
        }
        
        let sortedFrequencyOfCountry = frequencyOfCountry.sorted { $0.value > $1.value }
        guard let mostFrequencyCountry = sortedFrequencyOfCountry.first?.key else { return }
        
        
        
        countryOfCarsResultLabel.text = "Вам подойдет автомобиль из - \(mostFrequencyCountry.rawValue)"
        descriptionSelectionOfCarResultLabel.text = ("\(mostFrequencyCountry.definition)")
        
        updateUI(with: mostFrequencyCountry)
    }
    
    private func updateUI(with country: CountryOfOrigin?) {
        countryOfCarsResultLabel.text = "Вам подходит автомобиль из - \(country?.rawValue ?? "🇨🇳")!"
        descriptionSelectionOfCarResultLabel.text = country?.definition ?? ""
    }
}
