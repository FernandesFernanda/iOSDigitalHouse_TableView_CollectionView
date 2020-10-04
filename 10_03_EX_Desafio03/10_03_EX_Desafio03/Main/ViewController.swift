//
//  ViewController.swift
//  10_03_EX_Desafio03
//
//  Created by Fernanda Fernandes on 03/10/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrayCars = [Car]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        
        arrayCars.append(Car(name: "VW", image: "01.jpeg"))
        arrayCars.append(Car(name: "Volvo", image: "02.jpeg"))
        arrayCars.append(Car(name: "BMW", image: "03.jpeg"))
        arrayCars.append(Car(name: "Mercedes", image: "04.jpeg"))
        arrayCars.append(Car(name: "Nissan", image: "01.jpeg"))
        arrayCars.append(Car(name: "Fiat", image: "02.jpeg"))
        arrayCars.append(Car(name: "Jeep", image: "03.jpeg"))
        arrayCars.append(Car(name: "Hyundai", image: "04.jpeg"))
        arrayCars.append(Car(name: "Chevrolet", image: "01.jpeg"))
        arrayCars.append(Car(name: "Kia", image: "02.jpeg"))
    }
    


}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let carDetail = UIStoryboard(name: "CarDetail", bundle: nil).instantiateInitialViewController() as? CarDetailViewController {
            carDetail.carDetailImage = self.arrayCars[indexPath.row].image
            // NAVIGATION
            navigationController?.pushViewController(carDetail, animated: true)
        }
        
    }
}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarCollectionViewCell", for: indexPath) as! CarCollectionViewCell
        cell.setup(car: arrayCars[indexPath.row])
        return cell
    }
    
}
