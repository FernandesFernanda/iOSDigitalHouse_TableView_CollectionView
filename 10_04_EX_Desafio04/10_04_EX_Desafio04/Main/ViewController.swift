//
//  ViewController.swift
//  10_04_EX_Desafio04
//
//  Created by Fernanda Fernandes on 04/10/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrayPerson = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        arrayPerson.append(Person(name: "Mariana"))
        arrayPerson.append(Person(name: "Joana"))
        arrayPerson.append(Person(name: "Suzana"))
        arrayPerson.append(Person(name: "Pedro"))
        arrayPerson.append(Person(name: "Gustavo"))
        arrayPerson.append(Person(name: "Fernanda"))
        arrayPerson.append(Person(name: "Luciana"))
        arrayPerson.append(Person(name: "Marina"))
        arrayPerson.append(Person(name: "Patrícia"))
        arrayPerson.append(Person(name: "José"))
        arrayPerson.append(Person(name: "Maria"))
        arrayPerson.append(Person(name: "João"))
        arrayPerson.append(Person(name: "Isabela"))
        arrayPerson.append(Person(name: "Nathália"))
        arrayPerson.append(Person(name: "Rose"))
        arrayPerson.append(Person(name: "Lúcia"))
        arrayPerson.append(Person(name: "Mário"))
        arrayPerson.append(Person(name: "JP"))
        arrayPerson.append(Person(name: "Alfredo"))
        arrayPerson.append(Person(name: "Ítalo"))
        
    }

}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        arrayPerson.remove(at: indexPath.row)
        collectionView.reloadData()
               
    }
}

extension ViewController: UICollectionViewDataSource {
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayPerson.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PersonCollectionViewCell", for: indexPath) as! PersonCollectionViewCell
        
        cell.setup(person: arrayPerson[indexPath.row])
        return cell
    }
    
    
    
}
