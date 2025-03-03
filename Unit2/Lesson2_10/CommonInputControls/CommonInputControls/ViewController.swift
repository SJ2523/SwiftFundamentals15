//
//  ViewController.swift
//  CommonInputControls
//
//  Created by spring2025 on 3/2/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        buton.addTarget(self, action: #selector(buttonTapped(_ :)), for: .touchUpInside)
    }

        
    @IBAction func switchToggled(_ sender: UISwitch){
        if sender.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off.")
        }
    }
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
        @IBAction func textChanged(_ sender: UITextField){
            if let text = sender.text {
                print(text)
            }
        }
        
        @IBOutlet var toggle: UISwitch!
        @IBOutlet var slider: UISlider!
    
    @IBAction func buttonTapped(_ sender: UIButton){
        print("Button was tapped")
        
        if toggle.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off.")
        }
        print("The slider is set to \(slider.value)")
    }
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
    
    @IBOutlet var button: UIButton!
    
    
    }
    



