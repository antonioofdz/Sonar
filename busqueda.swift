//
//  busqueda.swift
//  Proyecto
//
//  Created by Bruno on 14/12/2020.
//  Copyright © 2020 ual. All rights reserved.
//

import UIKit

class busqueda{
    //MARK:atributos
    var nombre:String
    var tipo:Bool
    //Mark: Inicialización
    init?(nombre:String,tipo:Bool){
        if nombre.isEmpty{
            return nil
        }
        self.nombre=nombre
        self.tipo=tipo
        
    }
}
