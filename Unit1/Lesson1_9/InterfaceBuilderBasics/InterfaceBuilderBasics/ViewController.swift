//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by spring2025 on 2/8/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainlabel: UILabel!
    
        override func  viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    @IBAction func changeTitle (sender: Any) {
        mainlabel.text = "This app rocks!"
    }

}

