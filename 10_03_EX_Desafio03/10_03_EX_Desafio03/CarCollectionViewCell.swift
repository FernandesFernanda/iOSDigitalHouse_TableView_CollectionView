//
//  CarCollectionViewCell.swift
//  10_03_EX_Desafio03
//
//  Created by Fernanda Fernandes on 03/10/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var carNameLabel: UILabel!
    
    func setup(car: Car) {
        carImageView.image = UIImage(named: car.image)
        carNameLabel.text = car.name
    }
    
}
