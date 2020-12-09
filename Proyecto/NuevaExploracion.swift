//
//  NuevaExploracion.swift
//  Proyecto
//
//  Created by Bruno on 02/12/2020.
//  Copyright © 2020 ual. All rights reserved.
//

import UIKit

class NuevaExploracion: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var cView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.cView.allowsSelection = true
        self.cView.allowsMultipleSelection = false
        cView.delegate = self
        cView.dataSource = self
    }
    
    private class Attr {
        var name: String
        var color: UIColor
        
        init(name: String, color: UIColor) {
            self.name = name
            self.color = color
        }
    }
    
    private let dataSource : [Attr] = [
        Attr(name: "Atributo 4", color: UIColor(red: 161/255, green: 207/255, blue: 240/255, alpha: 1.0)),
        Attr(name: "Atributo 11", color: UIColor(red: 161/255, green: 207/255, blue: 240/255, alpha: 0.75)),
        Attr(name: "Atributo 17", color: UIColor(red: 161/255, green: 207/255, blue: 240/255, alpha: 0.50)),
        
        Attr(name: "Atributo 21", color: UIColor(red: 174/255, green: 196/255, blue: 205/255, alpha: 1)),
        Attr(name: "Atributo 36", color: UIColor(red: 174/255, green: 196/255, blue: 205/255, alpha: 0.75)),
        Attr(name: "Atributo 44", color: UIColor(red: 174/255, green: 196/255, blue: 205/255, alpha: 0.50)),
        
        Attr(name: "Atributo 45", color: UIColor(red: 199/255, green: 221/255, blue: 255/255, alpha: 1)),
        Attr(name: "Atributo 49", color: UIColor(red: 199/255, green: 221/255, blue: 255/255, alpha: 0.75)),
        Attr(name: "Atributo 52", color: UIColor(red: 199/255, green: 221/255, blue: 255/255, alpha: 0.50))
        
    ];
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        
        if let atributteCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? NuevaExploracionCell {
            atributteCell.configure(with: dataSource[indexPath.row].name)
            
            atributteCell.layer.borderWidth = 2 as CGFloat
            atributteCell.layer.borderColor = UIColor(red: 224, green: 246, blue: 255, alpha: 1).cgColor
            
            cell = atributteCell
        }
        
        cell.layer.backgroundColor = dataSource[indexPath.row].color.cgColor;
        
        return cell
    }
    
    // Llamar para cambiar el valor del atributo cuando se modifica el slider.
    func setValorAtributo(valor: Int)
    {
        if cView.indexPathsForSelectedItems?.count == 0 {return}
        
        let cell = cView.cellForItem(at: cView.indexPathsForSelectedItems!.last!) as! NuevaExploracionCell
        cell.setValorAtributo(with: valor)
    }
}
