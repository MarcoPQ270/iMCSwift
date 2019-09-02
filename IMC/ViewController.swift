//
//  ViewController.swift
//  IMC
//
//  Created by labdesarrollo5 on 8/28/19.
//  Copyright © 2019 labdesarrollo5. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var altura: UITextField!
    @IBOutlet weak var peso: UITextField!
    var Peso:Double = 0.0
    var Altura:Double = 0.0
    var imc:Double = 0.0
    
    
    @IBOutlet weak var lblresultado: UILabel!
    @IBAction func btncalcular(_ sender: UIButton) {
        if(peso.text?.isEmpty)!{
            lblresultado.text = "Falta de calcular el peso"
            peso.becomeFirstResponder()
        }else if (altura.text?.isEmpty)!{
            lblresultado.text = "Falta calcular la altura"
            altura.becomeFirstResponder()
        }
        else{
            Peso = Double(peso.text!)!
            Altura = Double(altura.text!)!
            imc=Peso/(Altura*Altura)
            //lblresultado.text = "El imc es de \(imc)"
            //showAlerta(titulo: "Calculo De IMC", mensaje: "Tu IMC Es De: \(imc)")
        }
    }
    
    func showAlerta(titulo: String, mensaje: String){
    //Crea La Alerta
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: UIAlertController.Style.alert)
    //Agregar Un Boton
        alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
    //Muestra El Alerta
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "segueIMC"){
            let segueimc = segue.destination as! viewControllerIMCViewController
            segueimc.imc = imc 
        }
    }
}

