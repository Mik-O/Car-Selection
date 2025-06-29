//
//  ResultViewController.swift
//  Car Selection
//
//  Created by Таня Кожевникова on 29.06.2025.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet var animalResultLabel: UILabel!
    @IBOutlet var descriptionAnimalResultLabel: UILabel!
    
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
        
        var frequencyOfAnimal: [CountryOfOrigin: Int] = [:]
        let animals = answers.map { $0.type }
        
        for animal in animals {
            if let animalTypeCount = frequencyOfAnimal[animal] {
                frequencyOfAnimal.updateValue(animalTypeCount + 1, forKey: animal)
            } else {
                frequencyOfAnimal[animal] = 1
            }
        }
        
        let sortedFrequencyOfAnimal = frequencyOfAnimal.sorted { $0.value > $1.value }
        guard let mostFrequencyAnimal = sortedFrequencyOfAnimal.first?.key else { return }
        
        
        
        animalResultLabel.text = "Вы - \(mostFrequencyAnimal.rawValue)"
        descriptionAnimalResultLabel.text = ("\(mostFrequencyAnimal.definition)")
        
        updateUI(with: mostFrequencyAnimal)
    }
    
    private func updateUI(with animal: CountryOfOrigin?) {
        animalResultLabel.text = "Вы - \(animal?.rawValue ?? "🐶")!"
        descriptionAnimalResultLabel.text = animal?.definition ?? ""
    }
}
