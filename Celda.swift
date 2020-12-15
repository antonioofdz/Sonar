//
//  Celda.swift
//  Proyecto
//
//  Created by Bruno on 02/12/2020.
//  Copyright © 2020 ual. All rights reserved.
//

import UIKit

class Celda: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var fecha: UILabel!
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
