//
//  Inicio.swift
//  Proyecto
//
//  Created by Bruno on 02/12/2020.
//  Copyright © 2020 ual. All rights reserved.
//

import UIKit

class Inicio: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return search.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"exploracion", for: indexPath)as!Celda
        if ord==2 || ord==1{
            cell.nombre.text=search[indexPath.row].nombre
            if search[indexPath.row].tipo==true{
                cell.fecha.text="Roca"
                
            }else{
                cell.fecha.text="Mina"
                
            }
        }else{
            cell.nombre.text=search[indexPath.row].nombre
            if search[indexPath.row].tipo==true{
                cell.fecha.text="Roca"
                
            }else{
                cell.fecha.text="Mina"
                
            }
        }
        
        
        
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tabla.delegate=self
        tabla.dataSource=self
        let bus1 = busqueda(nombre:"bus-1", tipo:true)
        let bus2 = busqueda(nombre:"bus-2", tipo:false)
        let bus3 = busqueda(nombre:"bus-3", tipo:true)
        busq+=[bus1!,bus2!,bus3!]
        search=busq
        tabla.rowHeight=90
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var tabla: UITableView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    var ord=0
    
    @IBAction func ordenarRoca(_ sender: UIButton) {
        if ord==2{
            ord=0
        }else{
            ord=2
        }
        ordenar()
    }
    @IBAction func ordenarMina(_ sender: UIButton) {
        if ord==1{
            ord=0
        }else{
            ord=1
        }
        ordenar()

    }
    var busq=[busqueda]()
    var search=[busqueda]()
    func ordenar(){
        if ord==1{
            
    
            search=busq.filter{
                (item:busqueda) -> Bool in return
                item.tipo==false
            }
        
            
        }else if ord==2{
            
                // seg.setImage(UIImage(named: "blue0517"), forSegmentAt: 1)
                search=busq.filter{
                    (item:busqueda) -> Bool in return
                    item.tipo==true
                }
            
            
            
        }else{
            search=busq
        }
      
       tabla.reloadData()
    }
}
