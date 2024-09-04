//
//  ViewController.swift
//  Calculadora_
//
//  Created by alumno on 9/2/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var texto_a_cambiar: UILabel!
    @IBOutlet weak var botton_funcional: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func que_hace_el_boton(_ sender: UIButton) {
        texto_a_cambiar.text = sender.titleLabel!.text ?? "NoSupo"
        
    }

    
}

