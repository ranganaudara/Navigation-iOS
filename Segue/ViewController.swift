//
//  ViewController.swift
//  Segue
//
//  Created by Fortuna Global on 9/5/19.
//  Copyright © 2019 Rangana Udara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func buttonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondScreen" {
            let destinationVC = segue.destination as! SecondViewController
            
            destinationVC.textPassedOver = textView.text!
        }
    }
    
}

