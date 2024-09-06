//
//  ViewController.swift
//  Calculadora_
//
//  Created by alumno on 9/2/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var texto_a_cambiar: UILabel!
    
    var botones_interfaz: Dictionary<String, IUBotonCalculadora> = [:]
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inicializar_calculadora()
        
        
    }
    @IBAction func que_hace_el_boton(_ sender: UIButton) {
        print(botones_interfaz[(sender.restorationIdentifier ??
        botob
        "esto no funciona")
        }
        
    }
    
    func inicializar_calculadora() -> Void{
        crear_arreglo_botones()
    }
    func crear_arreglo_botones() -> Void{
    
        for numero in 0...9{
            botones_interfaz["boton_\(numero)"] IUBotonCalculadora(
            ("boton_\(numero)",
                               "boton_\(numero)",
                               operacion: ""))
        }
    }
    
}

