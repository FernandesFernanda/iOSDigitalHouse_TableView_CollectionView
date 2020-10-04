//
//  PersonCollectionViewCell.swift
//  10_04_EX_Desafio04
//
//  Created by Fernanda Fernandes on 04/10/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class PersonCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    func setup(person: Person) {
        nameLabel.text = person.name
    }
    
}
