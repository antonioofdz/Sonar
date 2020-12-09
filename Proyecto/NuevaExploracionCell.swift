//
//  NuevaExploracionCell.swift
//  Proyecto
//
//  Created by Bruno on 07/12/2020.
//  Copyright © 2020 ual. All rights reserved.
//

import UIKit

class NuevaExploracionCell: UICollectionViewCell {
    
    @IBOutlet weak var nombreAtributoLbl: UILabel!
    @IBOutlet weak var valorAtributoTxt: UITextField!
    
    func configure(with nombreAtributo: String)
    {
        nombreAtributoLbl.text = nombreAtributo
    }
    
    func setValorAtributo(with valorAtributo: Int)
    {
        valorAtributoTxt.text = String(valorAtributo)
    }
    
    override var isSelected: Bool{
        didSet {
            if self.isSelected
            {
                layer.borderColor = UIColor(red: 63/255, green: 136/255, blue: 251/255, alpha: 1.0).cgColor
            }
            else
            {
                layer.borderColor = UIColor(red: 224, green: 246, blue: 255, alpha: 1).cgColor
            }
        }
    }
}
