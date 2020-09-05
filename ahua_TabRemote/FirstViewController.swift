//
//  FirstViewController.swift
//  ahua_TabRemote
//
//  Created by Amy Hua on 2/29/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var age: UITextField!

    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!
    
    @IBOutlet weak var BMI: UILabel!
    
    @IBAction func lbs(_ sender: UIButton) {
        let wt = Double(weight.text!) ?? 0.0
        let ht = Double(height.text!) ?? 0.0
        
        let calc = ((wt/(ht*ht))*703).rounded()
        BMI.text = "BMI:    \(calc)"
        
    }
    
    
    @IBAction func kg(_ sender: UIButton) {
        let wt = Double(weight.text!) ?? 0.0
        let ht = Double(height.text!) ?? 0.0
        
        let calc = (wt/(ht*ht)).rounded()
        BMI.text = "BMI:    \(calc)"
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

