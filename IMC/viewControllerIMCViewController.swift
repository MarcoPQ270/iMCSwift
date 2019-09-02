//
//  viewControllerIMCViewController.swift
//  IMC
//
//  Created by labdesarrollo5 on 9/2/19.
//  Copyright © 2019 labdesarrollo5. All rights reserved.
//

import UIKit

class viewControllerIMCViewController: UIViewController {
    
    var imc: Double!
    
    @IBOutlet weak var lblIMC: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblIMC.text = "Tu IMC Es De: \(String(imc))"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
