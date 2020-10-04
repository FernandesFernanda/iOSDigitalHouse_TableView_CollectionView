//
//  ViewController.swift
//  09_30_EX_Desafio02
//
//  Created by Fernanda Fernandes on 03/10/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var arrayAnimal = [Animal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        arrayAnimal.append(Animal(name: "Filó", breed: "Siamês", weight: 4.53, species: "Gato"))
        arrayAnimal.append(Animal(name: "Théo", breed: "Gato do Mato", weight: 5.25, species: "Gato"))
        arrayAnimal.append(Animal(name: "Thor", breed: "Husky Siberiano", weight: 10.35, species: "Cachorro"))
        arrayAnimal.append(Animal(name: "Lulu", breed: "Poodle", weight: 4.30, species: "Cachorro"))
        arrayAnimal.append(Animal(name: "Valentina", breed: "Cacatua", weight: 2.33, species: "Ave"))
        arrayAnimal.append(Animal(name: "Valentin", breed: "Siamês", weight: 3.53, species: "Gato"))
        arrayAnimal.append(Animal(name: "Pudim", breed: "Angorá", weight: 3.75, species: "Gato"))
        arrayAnimal.append(Animal(name: "Sushi", breed: "Vira-Lata", weight: 4.53, species: "Cachorro"))
        arrayAnimal.append(Animal(name: "Flor", breed: "Beija-Flor", weight: 1.25, species: "Ave"))
        arrayAnimal.append(Animal(name: "Amora", breed: "Peixe-Beta", weight: 0.23, species: "Peixe"))
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if let animalDetail = UIStoryboard(name: "AnimalDetail", bundle: nil).instantiateInitialViewController() as? AnimalDetailViewController {
            // MODAL
            present(animalDetail, animated: true, completion: nil)
            animalDetail.setAnimalName(animal: arrayAnimal[indexPath.row])
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayAnimal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalTableViewCell") as! AnimalTableViewCell
        cell.setup(animal: arrayAnimal[indexPath.row])
        return cell
    }
    
    
}
