//
//  ViewController.swift
//  Proyecto
//
//  Created by Bruno on 02/12/2020.
//  Copyright © 2020 ual. All rights reserved.
//

import UIKit

class InicioSesion: UIViewController {

    @IBOutlet weak var correo: UITextField!
    @IBOutlet weak var clave: UITextField!
    @IBOutlet weak var inicioSesion: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func iniciarSesion(_ sender: UIButton) {
        if(correo.text!.isEmpty || clave.text!.isEmpty){
            let alert = UIAlertController(title: "Aviso:", message: "Campos vacíos.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: .cancel, handler: nil))
            present(alert,animated:true)
        }
    }
    

}

