//
//  Registro.swift
//  Proyecto
//
//  Created by Bruno on 02/12/2020.
//  Copyright © 2020 ual. All rights reserved.
//

import UIKit

class Registro: UIViewController {

    @IBOutlet weak var correo: UITextField!
    @IBOutlet weak var clave: UITextField!
    @IBOutlet weak var confirmar: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func cancelar(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func guardar(_ sender: UIBarButtonItem) {
        if(correo.text!.isEmpty || clave.text!.isEmpty || confirmar.text!.isEmpty){
            let alert = UIAlertController(title: "Aviso:", message: "Campos vacíos.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: .cancel, handler: nil))
            present(alert,animated:true)
        }else if(clave.text != confirmar.text){
            let alert = UIAlertController(title: "Aviso:", message: "Las claves no coinciden.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: .cancel, handler: nil))
            present(alert,animated:true)
        }
    }
}
