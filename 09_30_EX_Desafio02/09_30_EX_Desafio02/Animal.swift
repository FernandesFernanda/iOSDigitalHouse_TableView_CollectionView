//
//  Animal.swift
//  09_30_EX_Desafio02
//
//  Created by Fernanda Fernandes on 03/10/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import Foundation

class Animal {
    var name: String
    var breed: String
    var weight: Double
    var species: String
    
    init(name: String, breed: String, weight: Double, species: String) {
        self.name = name
        self.breed = breed
        self.weight = weight
        self.species = species
    }
}
