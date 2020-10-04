//
//  AnimalTableViewCell.swift
//  09_30_EX_Desafio02
//
//  Created by Fernanda Fernandes on 03/10/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {
    
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var animalBreedLabel: UILabel!
    @IBOutlet weak var animalWeightLabel: UILabel!
    @IBOutlet weak var animalSpeciesLabel: UILabel!

    
    func setup(animal: Animal){
        animalNameLabel.text = "Nome: \(animal.name)"
        animalBreedLabel.text = "Raça: \(animal.breed)"
        animalWeightLabel.text = "Peso: \(String(animal.weight))"
        animalSpeciesLabel.text = "Espécie: \(animal.species)"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
