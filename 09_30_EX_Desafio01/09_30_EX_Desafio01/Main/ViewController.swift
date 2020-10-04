//
//  ViewController.swift
//  09_30_EX_Desafio01
//
//  Created by Fernanda Fernandes on 30/09/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var arrayPerson = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        arrayPerson.append(Person(name: "João", email: "joao@gmail.com", role: "Gerente de Vendas"))
        arrayPerson.append(Person(name: "Maria", email: "maria@gmail.com", role: "CEO"))
        arrayPerson.append(Person(name: "José", email: "jose@gmail.com", role: "Motoboy"))
        arrayPerson.append(Person(name: "Mariana", email: "mariana@gmail.com", role: "Diretora de Contas"))
        arrayPerson.append(Person(name: "Margarida", email: "margarida@gmail.com", role: "Diretora Comercial"))
        arrayPerson.append(Person(name: "André", email: "andre@gmail.com", role: "PM"))
        arrayPerson.append(Person(name: "Luiz", email: "luiz@gmail.com", role: "PO"))
        arrayPerson.append(Person(name: "Gustavo", email: "gustavo@gmail.com", role: "Gerente Administrativo"))
        arrayPerson.append(Person(name: "Pedro", email: "pedro@gmail.com", role: "Controller"))
        arrayPerson.append(Person(name: "Julia", email: "julia@gmail.com", role: "Diretora Financeira"))
        arrayPerson.append(Person(name: "Paulo", email: "paulo@gmail.com", role: "Estagiário"))
        arrayPerson.append(Person(name: "Antônio", email: "antonio@gmail.com", role: "Trainee"))
        arrayPerson.append(Person(name: "Bianca", email: "bianca@gmail.com", role: "Trainee"))
        arrayPerson.append(Person(name: "Paula", email: "paula@gmail.com", role: "Head de Marketing"))
        arrayPerson.append(Person(name: "Ana", email: "ana@gmail.com", role: "Gerente Sênior"))
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if let personDetail = UIStoryboard(name: "PersonDetail", bundle: nil).instantiateInitialViewController() as? PersonDetailViewController {
            // MODAL
            present(personDetail, animated: true, completion: nil)
            personDetail.setPersonDetail(person: arrayPerson[indexPath.row])
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPerson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonTableViewCell") as! PersonTableViewCell
        
        cell.setup(person: arrayPerson[indexPath.row])
        
        return cell
    }
    
    
}

