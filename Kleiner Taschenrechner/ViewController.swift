//
//  ViewController.swift
//  Kleiner Taschenrechner
//
//  Created by Tom Kumschier on 22.02.15.
//  Copyright (c) 2015 Tom Kumschier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var zahl1TF: UITextField!
    @IBOutlet weak var zahl2TF: UITextField!
    @IBOutlet weak var operatorControl: UISegmentedControl!
    
    @IBOutlet weak var ergebnisLB: UILabel!

    @IBAction func startButton() {
        
        var zahl1 = 0.0
        var zahl2 = 0.0
        //var zahl1 = (String(zahl1TF.text).toInt())
        if (String(zahl1TF.text).toInt()) != nil {
             zahl1 = Double(String(zahl1TF.text).toInt()!)
        }else {
            ergebnisLB.text = "Fehler 1"
            return
        }
        if (String(zahl2TF.text).toInt()) != nil {
             zahl2 = Double(String(zahl2TF.text).toInt()!)
        }else {
            ergebnisLB.text = "Fehler 2"
            return
        }
        ergebnisLB.text = "Zahl 1: \(zahl1); Zahl 2: \(zahl2)"
   
        switch operatorControl.selectedSegmentIndex {
        case 0: ergebnisLB.text = "\(zahl1 + zahl2)"
        case 1: ergebnisLB.text = "\(zahl1 - zahl2)"
        case 2: ergebnisLB.text = "\(zahl1 * zahl2)"
        case 3: ergebnisLB.text = "\(zahl1 / zahl2)"
        default: ergebnisLB.text = "Fehler3"
        }
    }
}

