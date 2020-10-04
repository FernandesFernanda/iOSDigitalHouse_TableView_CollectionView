//
//  PersonTableViewCell.swift
//  09_30_EX_Desafio01
//
//  Created by Fernanda Fernandes on 30/09/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelRole: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setup(person: Person) {
        labelName.text = person.name
        labelEmail.text = person.email
        labelRole.text = person.role
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: true)

        // Configure the view for the selected state
    }

}
